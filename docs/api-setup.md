# DeepSeek And Qwen API Setup

This repo has two API agents:

- `A3`: Deepseek V4 Pro think_max
- `A4`: qwen3.7-max through Alibaba Cloud Model Studio / DashScope Bailian

The web agents `A1` and `A2` still run manually through ChatGPT and Gemini.

## 1. Configure Keys

Create a local `.env` file from the template:

```powershell
Copy-Item .env.example .env
notepad .env
```

Fill in:

```text
DEEPSEEK_API_KEY=sk-...
QWEN_API_KEY=sk-...
```

`.env` is ignored by Git. The orchestrator loads it automatically and does not overwrite already-set environment variables.

You can also set keys only for the current PowerShell session:

```powershell
$env:DEEPSEEK_API_KEY="sk-..."
$env:QWEN_API_KEY="sk-..."
```

## 2. Current API Settings

The active settings live in `config/agents.web-test.json`.

### A3 DeepSeek

```json
{
  "endpoint": "https://api.deepseek.com/chat/completions",
  "default_model": "deepseek-v4-pro",
  "temperature": 0.1,
  "save_reasoning_content": true,
  "extra_body": {
    "thinking": {"type": "enabled"},
    "reasoning_effort": "max",
    "max_tokens": 32768
  }
}
```

The returned `reasoning_content` is saved into the response file under `# Model Reasoning Content`, followed by `# Final Answer`. Quality gates are checked against the public `# Final Answer` block, not the hidden reasoning block.

If the provider reports a length/token finish reason, the orchestrator can send continuation requests. A3 currently allows two automatic continuations through `"max_continuations": 2`.

### A4 Qwen

```json
{
  "endpoint": "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions",
  "default_model": "qwen3.7-max",
  "temperature": 0.0,
  "max_tokens": 8192,
  "stream": true,
  "save_reasoning_content": true,
  "extra_body": {
    "enable_thinking": true,
    "thinking_budget": 15000
  }
}
```

`qwen3.7-max` is the default A4 model because Round 12 prompts need the full KKT state, judge-assigned task, and prior reasoning context. Do not use `qwen-math-plus` for this main A4 role; it rejected the full Round 12 prompt with a much smaller input limit, so it should only be used for short targeted checks or local experiments. The optional config key `max_prompt_chars` remains supported by the orchestrator for those fallback cases, but the default A4 path does not compress the prompt.

For long harmonic-analysis proof work, A4 uses deterministic sampling (`temperature: 0.0`), an 8192-token public answer budget, and thinking mode with a 15000-token thinking budget. DashScope treats `enable_thinking` and `thinking_budget` as non-OpenAI-standard parameters, so they are kept under `extra_body` in config and sent in the request payload.

For short code-interpreter checks, make a local config override that sets a short-context model such as `qwen-math-plus`, adds `"enable_code_interpreter": true` under `extra_body`, and keeps `"stream": true`.

## 3. Smoke Test API Agents

After adding keys:

```powershell
python -m math_collab.api_smoke --config config/agents.web-test.json --agents A3,A4
```

Test only one:

```powershell
python -m math_collab.api_smoke --agents A3
python -m math_collab.api_smoke --agents A4
```

## 4. Run Round 12

Before Round 12, it is best to let A1/GPT judge the Round 11 seed and the two latest strategies:

```powershell
python -m math_collab.bootstrap_judge --run-id kkt-main
```

After saving and ingesting the bootstrap judge response, generate/advance the first normalized round:

```powershell
python -m math_collab.orchestrator --config config/agents.web-test.json --problem problems/kkt_conjecture.md --run-id kkt-main --start-round 12 --rounds 1 --skip-missing-api
```

What happens:

1. A1/A2 web prompts are written under `rounds/kkt-main/round_012/prompts/`.
2. A3/A4 are called automatically if `DEEPSEEK_API_KEY` and `QWEN_API_KEY` are configured.
3. If keys are missing, pending files are written and the round barrier waits.
4. A2 web responses are quality-gated for length, section structure, assumptions, verification plans, and overconfident language. If A2 is rejected, paste the generated `_revise.md` prompt back into Gemini and replace the handoff response.
5. After saving accepted A1/A2 web responses into `handoff/kkt-main/round_012/responses/`, rerun the same command to advance to reviews.

## Official References

- DeepSeek API docs: thinking mode uses `thinking`, supports `reasoning_effort`, and returns `reasoning_content`: <https://api-docs.deepseek.com/guides/thinking_mode>
- DeepSeek API quick start lists the OpenAI-compatible base URL and `deepseek-v4-pro`: <https://api-docs.deepseek.com/>
- Alibaba Cloud Model Studio docs: DashScope OpenAI-compatible base URL is `https://dashscope.aliyuncs.com/compatible-mode/v1`, and the supported Max model list includes `qwen3.7-max`: <https://help.aliyun.com/zh/model-studio/compatibility-of-openai-with-dashscope>
- Alibaba Cloud Model Studio Responses API docs also list `qwen3.7-max` as a supported model: <https://help.aliyun.com/zh/model-studio/compatibility-with-openai-responses-api>
- Alibaba Cloud Model Studio code interpreter docs: `enable_code_interpreter` is passed through `extra_body` in Python SDK usage; Chat Completions code-interpreter examples use streaming responses: <https://help.aliyun.com/zh/model-studio/qwen-code-interpreter>

# DeepSeek And Qwen API Setup

This repo has two API agents:

- `A3`: Deepseek V4 Pro think_max
- `A4`: qwen-math-plus through Alibaba Cloud Model Studio / DashScope Bailian

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

The returned `reasoning_content` is saved into the response file under `# Model Reasoning Content`, followed by `# Final Answer`.

### A4 Qwen

```json
{
  "endpoint": "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions",
  "default_model": "qwen-math-plus",
  "temperature": 0.0,
  "stream": true,
  "save_reasoning_content": true,
  "extra_body": {
    "enable_code_interpreter": true,
    "enable_thinking": true
  }
}
```

Qwen code interpreter output is parsed from the OpenAI-compatible streaming response.

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

Generate/advance the first normalized round:

```powershell
python -m math_collab.orchestrator --config config/agents.web-test.json --problem problems/kkt_conjecture.md --run-id kkt-main --start-round 12 --rounds 1 --skip-missing-api
```

What happens:

1. A1/A2 web prompts are written under `rounds/kkt-main/round_012/prompts/`.
2. A3/A4 are called automatically if `DEEPSEEK_API_KEY` and `QWEN_API_KEY` are configured.
3. If keys are missing, pending files are written and the round barrier waits.
4. After saving A1/A2 web responses into `handoff/kkt-main/round_012/responses/`, rerun the same command to advance to reviews.

## Official References

- DeepSeek API docs: thinking mode uses `thinking`, supports `reasoning_effort`, and returns `reasoning_content`: <https://api-docs.deepseek.com/guides/thinking_mode>
- DeepSeek API quick start lists the OpenAI-compatible base URL and `deepseek-v4-pro`: <https://api-docs.deepseek.com/>
- Alibaba Cloud Model Studio docs: DashScope OpenAI-compatible base URL is `https://dashscope.aliyuncs.com/compatible-mode/v1`, and the Qwen math model list includes `qwen-math-plus`: <https://help.aliyun.com/zh/model-studio/compatibility-of-openai-with-dashscope>
- Alibaba Cloud Model Studio code interpreter docs: `enable_code_interpreter` is passed through `extra_body` in Python SDK usage; Chat Completions code-interpreter examples use streaming responses: <https://help.aliyun.com/zh/model-studio/qwen-code-interpreter>

# Round 30 Strategy-Revised Audit: Ermakov-Pinney Non-Dividing Amplitude Pilot

Source status: round-local human strategy memo. Treat this as an exploratory idea source for the Round 30 judge and Round 31 task design, not as a proof, not as a forced pivot, and not as evidence that the endpoint-cap route has failed.

## Executive Assessment

The memo correctly identifies the main weakness of the rational-Bessel quotient route: it divides by an oscillatory reference solution

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}),
$$

so the quotient $h=Y/W_1$ is safe only while the true critical point stays before the first zero of $W_1$. A2's Round 30 analysis shows that this zero-safety condition is plausible only in a small-alpha regime unless explicit finite Bessel constants are supplied. The Ermakov-Pinney amplitude idea is therefore a natural non-dividing alternative.

However, the memo's original wording overstates the case. The EP formulation does not automatically prove the KKT amplitude bound, remove all regime splits, or supply the missing gamma-normalization and comparison constants. It avoids division by a zero of one chosen reference solution, but it replaces that difficulty with a nonlinear amplitude-comparison problem. This is a useful exploratory task, not a theorem-level module yet.

## Calibrated Mathematical Core

Start from the rational normal form

$$
Y''+\bigl(Q_0(z)+\Delta Q(z)\bigr)Y=0,
\qquad
\Delta Q(z)<0,
$$

where

$$
Q_0(z)=\frac{\Lambda_B}{z}+\frac{1-\alpha^2}{4z^2}
$$

is the Bessel reference potential. Choose a Wronskian-normalized fundamental pair for the reference equation and form its positive amplitude $A_0$. With the normalization chosen so that the Wronskian is $1$,

$$
A_0''+Q_0A_0=A_0^{-3}.
$$

For a corresponding true amplitude $A$ satisfying

$$
A''+(Q_0+\Delta Q)A=A^{-3},
$$

write $A=\rho A_0$ and use the reference phase coordinate

$$
s=\int^z A_0(y)^{-2}\,dy.
$$

A direct calculation gives the regular relative-amplitude equation

$$
\rho_{ss}+\rho-\rho^{-3}=-\Delta Q(z(s))A_0(z(s))^4\rho.
$$

Since $\Delta Q<0$, the forcing term is nonnegative. This equation is zero-safe because it does not divide by $W_1$. It is the main useful idea in the memo.

## Audit of the Proposed Energy Argument

The natural energy is

$$
E(s)=\frac12\rho_s^2+\frac12\left(\rho^2+\rho^{-2}\right).
$$

Then

$$
E'(s)=\bigl(-\Delta Q(z(s))A_0(z(s))^4\bigr)\rho\rho_s
=\frac12 G(s)(\rho^2)' ,
\qquad
G(s)=-\Delta Q(z(s))A_0(z(s))^4.
$$

This is a useful identity, but it is not yet a closed Gronwall estimate. Because $G(s)$ varies with $s$, integrating $E'=\frac12G(\rho^2)'$ produces boundary terms and a $G'(s)\rho^2$ term after integration by parts. A proof must therefore bound $G$, or $G'$ plus endpoint data, strongly enough to imply the KKT target. The nonlinear term $\rho-\rho^{-3}$ is a stabilizing part of the unforced oscillator, but it is not by itself a damping mechanism that prevents all growth.

## Required Missing Ingredients

Before the EP pilot can be promoted, the following items must be supplied:

1. **Amplitude normalization.** Specify the reference fundamental pair, the Wronskian, and the exact normalization of $A_0$. If the Wronskian is not $1$, the right side of the EP equation changes by a constant factor.

2. **Matching to the Jacobi Frobenius branch.** The amplitude $A$ is not uniquely determined by a single solution $Y$ unless a phase convention and companion solution are fixed. The proof must show that the chosen amplitude bounds the normalized Jacobi solution with the correct Frobenius constant.

3. **Switch-point data.** If the EP argument starts after a Volterra pre-peak zone, the transition point must provide rigorous interval bounds for $A$, $A_s$, and $\rho,\rho_s$. These cannot be inferred from qualitative positivity.

4. **Coefficient control.** Derive explicit upper bounds for

$$
G(s)=-\Delta Q(z(s))A_0(z(s))^4
$$

and, if using integration by parts, for $G'(s)$. These bounds must be strong enough after inserting the gamma normalization $M_{n,\alpha,B}$.

5. **KKT target inequality.** The endpoint goal is not merely bounded $\rho$; it is

$$
|Y(z_1^*)|\le \text{the KKT-normalized target}.
$$

The EP pilot must produce a scalar inequality that implies this exact target, including all $n,\alpha,\beta,B$ normalizations.

6. **Low-degree test.** The first test should be one already-audited case: $n=1$, one certified $n=2$ box, or one boundary face. If the EP envelope is too loose there, it should not receive broad effort.

## Recommended Use in Round 31

Do not replace the current Round 31 execution plan. The main work should remain:

1. finish the $n=2$ boundary-face value certificates;
2. expand the rational Bernstein interior grid;
3. replay A1's gamma and Bernstein certificates independently;
4. repair the gamma-ratio lemma hypotheses;
5. continue the rational-Bessel zero-safety constants only as a conditional small-alpha theorem.

Allocate at most a small exploratory share to EP. The exact task should be:

> Derive the EP relative-amplitude equation from the rational Bessel normal form with all Wronskian constants, prove or fail a comparison inequality for $G(s)$ on one certified $n=2$ box, and report whether the resulting bound is sharper than the existing rational certificate.

If this pilot does not produce a concrete inequality with constants, the judge should keep it as a side note and not promote it into the proof spine.

## Judge-Facing Conclusion

The Ermakov-Pinney strategy is valuable because it attacks the zero-safety obstruction at the right conceptual level: it replaces a quotient by an oscillatory solution with a positive amplitude variable. Its weakness is that the necessary amplitude comparison, normalization, and KKT target inequality are still missing. The correct judge action is to record it as a bounded exploratory pilot, not as a pivot.

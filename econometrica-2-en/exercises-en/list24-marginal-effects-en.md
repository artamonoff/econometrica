# Problems in Econometrics-2: Marginal effects
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [Marginal values/effects](#marginal-valueseffects)
  - [Formulas for marginal effects](#formulas-for-marginal-effects)
  - [Average marginal effects](#average-marginal-effects)
  - [Approve equation](#approve-equation)
  - [labour force equation](#labour-force-equation)
  - [swiss labour force equation](#swiss-labour-force-equation)

## Marginal values/effects

### Formulas for marginal effects

**for the probit model** $P(y=1)=\Phi(x^\top\beta)$ the formula for
marginal values is

$$
\begin{aligned}
    \frac{\partial P(y=1)}{\partial x_j}&=\phi\left(x^\top\beta\right)\beta_j & \phi(z)=\frac{1}{\sqrt{2\pi}}exp\left(-z^2/2\right)
\end{aligned}
$$

**for the logit model** $P(y=1)=\Lambda(x^\top\beta)$ the formula for
marginal values is

$$
\begin{aligned}
    \frac{\partial P(y=1)}{\partial x_j}&=\lambda\left(x^\top\beta\right)\beta_j & \lambda(z)=\frac{exp(z)}{(1+exp(z))^2}
\end{aligned}
$$

### Average marginal effects

Typically the following are calculated

- marginal values for each regressor at the mean point
  $x_{mean}=\sum_i x_i/n$:

$$
\begin{aligned}
    probit:&\ \phi\left(x_{mean}^\top\beta\right)\beta_j & logit:&\ \lambda\left(x_{mean}^\top\beta\right)\beta_j
\end{aligned}
$$

- the sample-average marginal value for each regressor:

$$
\begin{aligned}
    probit:&\ \frac 1n \sum_{i}\phi\left(x_i^\top\beta\right)\beta_j & logit:&\ \frac 1n \sum_{i}\lambda\left(x_i^\top\beta\right)\beta_j
\end{aligned}
$$

### Approve equation

For the dataset `loanapp`, estimate the **probit** and **logit**
regressions of `approve` on `I(appinc/100)+mortno+unem+dep+male`. For
each regression, compute the marginal values and interpret them: - at
the mean point for each regressor - the sample-average marginal value
for each regressor.

Test the significance of the marginal effects at the significance level
5.0%. Compare with the marginal effects in the LPM model. **Round your
answer to 3 decimal places**

**Answer**: marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| I(appinc / 100) | -0.014 | -0.011 | -0.011 | -0.011 | -0.011 |
| mortno | 0.079 | 0.077 | 0.077 | 0.078 | 0.077 |
| unem | -0.008 | -0.007 | -0.007 | -0.007 | -0.007 |
| dep | -0.012 | -0.011 | -0.011 | -0.011 | -0.011 |
| male | 0.019 | 0.019 | 0.019 | 0.019 | 0.019 |

their test statistics

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| I(appinc / 100) | -1.256 | -1.583 | -1.487 | -1.581 | -1.488 |
| mortno | 5.254 | 5.451 | 5.434 | 5.442 | 5.429 |
| unem | -1.999 | -2.26 | -2.281 | -2.251 | -2.28 |
| dep | -1.658 | -1.741 | -1.65 | -1.736 | -1.649 |
| male | 0.946 | 0.945 | 0.955 | 0.948 | 0.956 |

significance of marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|:---|:---|:---|:---|:---|
| I(appinc / 100) | Not significant | Not significant | Not significant | Not significant | Not significant |
| mortno | Significant | Significant | Significant | Significant | Significant |
| unem | Significant | Significant | Significant | Significant | Significant |
| dep | Not significant | Not significant | Not significant | Not significant | Not significant |
| male | Not significant | Not significant | Not significant | Not significant | Not significant |

### labour force equation

For the dataset `TableF5-1`, estimate the **probit** and **logit**
regressions of `LFP` on `WA+np.log(FAMINC)+WE+KL6+K618+CIT+UN`. For each
regression, compute the marginal values and interpret them: - at the
mean point for each regressor - the sample-average marginal value for
each regressor.

Test the significance of the marginal effects at the significance level
1.0%. Compare with the marginal effects in the LPM model. **Round your
answer to 3 decimal places**

**Answer**: marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| WA | -0.013 | -0.015 | -0.015 | -0.013 | -0.013 |
| np.log(FAMINC) | 0.075 | 0.083 | 0.081 | 0.073 | 0.072 |
| WE | 0.038 | 0.044 | 0.042 | 0.038 | 0.038 |
| KL6 | -0.302 | -0.353 | -0.34 | -0.307 | -0.304 |
| K618 | -0.018 | -0.023 | -0.022 | -0.02 | -0.02 |
| CIT | -0.048 | -0.052 | -0.049 | -0.045 | -0.044 |
| UN | -0.004 | -0.004 | -0.004 | -0.004 | -0.004 |

their test statistics

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| WA | -5.351 | -5.006 | -5.053 | -5.324 | -5.314 |
| np.log(FAMINC) | 2 | 1.982 | 1.973 | 2.001 | 1.987 |
| WE | 4.733 | 4.45 | 4.504 | 4.667 | 4.686 |
| KL6 | -9.014 | -7.395 | -7.738 | -8.642 | -8.818 |
| K618 | -1.251 | -1.416 | -1.407 | -1.422 | -1.412 |
| CIT | -1.284 | -1.219 | -1.176 | -1.221 | -1.177 |
| UN | -0.627 | -0.675 | -0.67 | -0.676 | -0.671 |

significance of marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|:---|:---|:---|:---|:---|
| WA | Significant | Significant | Significant | Significant | Significant |
| np.log(FAMINC) | Not significant | Not significant | Not significant | Not significant | Not significant |
| WE | Significant | Significant | Significant | Significant | Significant |
| KL6 | Significant | Significant | Significant | Significant | Significant |
| K618 | Not significant | Not significant | Not significant | Not significant | Not significant |
| CIT | Not significant | Not significant | Not significant | Not significant | Not significant |
| UN | Not significant | Not significant | Not significant | Not significant | Not significant |

### swiss labour force equation

For the dataset `SwissLabour`, estimate the **probit** and **logit**
regressions of `participation` on
`income+age+I(age**2)+youngkids+oldkids`. For each regression, compute
the marginal values and interpret them: - at the mean point for each
regressor - the sample-average marginal value for each regressor.

Test the significance of the marginal effects at the significance level
10.0%. Compare with the marginal effects in the LPM model. **Round your
answer to 3 decimal places**

**Answer**: marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| income | -0.258 | -0.33 | -0.318 | -0.279 | -0.278 |
| age | 0.795 | 0.965 | 0.934 | 0.817 | 0.815 |
| I(age \*\* 2) | -0.112 | -0.136 | -0.131 | -0.115 | -0.115 |
| youngkids | -0.228 | -0.264 | -0.253 | -0.224 | -0.221 |
| oldkids | -0.053 | -0.062 | -0.06 | -0.053 | -0.053 |

their test statistics

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|---:|---:|---:|---:|---:|
| income | -7.533 | -6.249 | -6.428 | -6.788 | -6.898 |
| age | 6.405 | 5.849 | 5.95 | 6.288 | 6.323 |
| I(age \*\* 2) | -7.527 | -6.633 | -6.79 | -7.295 | -7.359 |
| youngkids | -7.029 | -6.458 | -6.69 | -7.082 | -7.232 |
| oldkids | -2.965 | -3.052 | -3.055 | -3.112 | -3.104 |

significance of marginal effects

| Regressor | LPM effect | At mean point (logit) | At mean point (probit) | Sample average (logit) | Sample average (probit) |
|:---|:---|:---|:---|:---|:---|
| income | Significant | Significant | Significant | Significant | Significant |
| age | Significant | Significant | Significant | Significant | Significant |
| I(age \*\* 2) | Significant | Significant | Significant | Significant | Significant |
| youngkids | Significant | Significant | Significant | Significant | Significant |
| oldkids | Significant | Significant | Significant | Significant | Significant |

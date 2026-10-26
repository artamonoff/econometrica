# Problems in Econometrics-2: logit/probit models
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [Model specification](#model-specification)
- [Estimation and interpretation of
  coefficients](#estimation-and-interpretation-of-coefficients)
  - [Approve equation No. 1 (logit)](#approve-equation-no-1-logit)
  - [Approve equation No. 2 (probit)](#approve-equation-no-2-probit)
  - [Labour force equation No. 1
    (logit)](#labour-force-equation-no-1-logit)
  - [Labour force equation No. 2
    (probit)](#labour-force-equation-no-2-probit)
  - [Swiss labour force equation No. 1
    (logit)](#swiss-labour-force-equation-no-1-logit)
  - [Swiss labour force equation No. 2
    (probit)](#swiss-labour-force-equation-no-2-probit)
- [z-test](#z-test)
  - [Approve equation No. 1 (logit)](#approve-equation-no-1-logit-1)
  - [Approve equation No. 2 (probit)](#approve-equation-no-2-probit-1)
  - [Labour force equation No. 1
    (logit)](#labour-force-equation-no-1-logit-1)
  - [Labour force equation No. 2
    (probit)](#labour-force-equation-no-2-probit-1)
  - [Swiss labour force equation No. 1
    (logit)](#swiss-labour-force-equation-no-1-logit-1)
- [LR test: overall significance of
  regression](#lr-test-overall-significance-of-regression)
  - [Approve equation No. 1](#approve-equation-no-1)
  - [Approve equation No. 2](#approve-equation-no-2)
  - [Labour force equation No. 1](#labour-force-equation-no-1)
  - [Labour force equation No. 2](#labour-force-equation-no-2)
  - [Swiss labour force equation
    No. 1](#swiss-labour-force-equation-no-1)
- [Wald test: joint significance](#wald-test-joint-significance)
  - [Approve equation No. 1 (probit)](#approve-equation-no-1-probit)
    - [Hypothesis No. 1](#hypothesis-no-1)
    - [Hypothesis No. 2](#hypothesis-no-2)
    - [Hypothesis No. 3](#hypothesis-no-3)
  - [Labour force equation No. 1
    (logit)](#labour-force-equation-no-1-logit-2)
    - [Hypothesis No. 1](#hypothesis-no-1-1)
    - [Hypothesis No. 2](#hypothesis-no-2-1)
    - [Hypothesis No. 3](#hypothesis-no-3-1)
  - [Swiss labour force equation No. 1
    (logit)](#swiss-labour-force-equation-no-1-logit-2)
    - [Hypothesis No. 1](#hypothesis-no-1-2)
    - [Hypothesis No. 2](#hypothesis-no-2-2)
    - [Hypothesis No. 3](#hypothesis-no-3-2)

## Model specification

Let

- $y$ be a binary dependent variable
- $(x_1,\ldots,x_k)$ be explanatory variables or regressors

Denote

$$
\begin{aligned}
    x^\top&=\begin{pmatrix} 1 & x_1 & \cdots & x_k\end{pmatrix} &
    \beta^\top&=\begin{pmatrix} \beta_0 & \beta_1 & \cdots & \beta_k\end{pmatrix} &
\end{aligned}
$$

Then

$$
    x^\top\beta=\beta_0+\beta_1x_1+\cdots+\beta_kx_k
$$

Basic binary dependent variable regression models

$$
\begin{aligned}
    logit:&\  Prob(y=1)=\Lambda\left(x^\top\beta\right) \\
    probit:&\  Prob(y=1)=\Phi\left(x^\top\beta\right)
\end{aligned}
$$

where

$$
\begin{aligned}
    \Lambda(u)&=\frac{\exp(u)}{1+\exp(u)}=\frac{1}{1+\exp(-u)} & 
    \Phi(u)&=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^u \exp\left(-t^2/2\right)dt
\end{aligned}
$$

Alternative specifications

$$
\begin{aligned}
    logit(Prob(y=1))&= x^\top\beta \\
    probit(Prob(y=1))&= x^\top\beta
\end{aligned}
$$

where

$$
\begin{aligned}
    logit(p)& =\Lambda^{-1}(p)=\log\left(\frac{p}{1-p}\right) &
    probit(p)&=\Phi^{-1}(p)
\end{aligned}
$$

## Estimation and interpretation of coefficients

### Approve equation No. 1 (logit)

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on `mortno+unem+dep+male+married+yjob+self` and report its
coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient | Estimate |
|:------------|---------:|
| Intercept   |     1.86 |
| mortno      |     0.77 |
| unem        |   -0.052 |
| dep         |   -0.168 |
| male        |    0.022 |
| married     |    0.417 |
| yjob        |   -0.007 |
| self        |   -0.314 |

**Interpret the coefficients of the model**

### Approve equation No. 2 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` and report
its coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient      | Estimate |
|:-----------------|---------:|
| Intercept        |     1.01 |
| appinc           |    0.002 |
| I(appinc \*\* 2) |       -0 |
| mortno           |    0.365 |
| unem             |   -0.028 |
| dep              |   -0.078 |
| male             |   -0.008 |
| married          |    0.207 |
| yjob             |   -0.004 |
| self             |   -0.196 |

**Interpret the coefficients of the model**

### Labour force equation No. 1 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)` and report its
coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient    | Estimate |
|:---------------|---------:|
| Intercept      |   -3.241 |
| WA             |    0.007 |
| I(WA \*\* 2)   |   -0.001 |
| WE             |     0.18 |
| KL6            |   -1.414 |
| K618           |   -0.104 |
| CIT            |   -0.217 |
| UN             |   -0.018 |
| np.log(FAMINC) |    0.333 |

**Interpret the coefficients of the model**

### Labour force equation No. 2 (probit)

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WA+WE+CIT+UN+np.log(FAMINC)` and report its coefficients. **Round
your answer to 3 decimal places**

Answer:

| Coefficient    | Estimate |
|:---------------|---------:|
| Intercept      |   -2.739 |
| WA             |    -0.01 |
| WE             |     0.09 |
| CIT            |   -0.127 |
| UN             |   -0.013 |
| np.log(FAMINC) |    0.244 |

**Interpret the coefficients of the model**

### Swiss labour force equation No. 1 (logit)

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on `income+age+education+youngkids+oldkids` and report
its coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient | Estimate |
|:------------|---------:|
| Intercept   |   12.433 |
| income      |   -0.894 |
| age         |   -0.564 |
| education   |   -0.046 |
| youngkids   |   -1.221 |
| oldkids     |   -0.016 |

**Interpret the coefficients of the model**

### Swiss labour force equation No. 2 (probit)

For the dataset `SwissLabour`, estimate the **probit** regression of
`participation` on
`np.log(income)+age+I(age**2)+education+youngkids+oldkids` and report
its coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient    | Estimate |
|:---------------|---------:|
| Intercept      |    15.11 |
| np.log(income) |    -7.74 |
| age            |    2.331 |
| I(age \*\* 2)  |    -0.33 |
| education      |   -0.024 |
| youngkids      |   -0.644 |
| oldkids        |   -0.159 |

**Interpret the coefficients of the model**

## z-test

### Approve equation No. 1 (logit)

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on `mortno+unem+dep+male+married+yjob+self` and test the
significance of its coefficients. Significance level 5.0%. For each
coefficient, report - its test statistic, - P-value - critical value -
and draw a conclusion.

**Round your answer to 3 decimal places**

Answer:

| Coefficient | Test stat | P-value | Conclusion    |
|:------------|----------:|--------:|:--------------|
| Intercept   |     9.646 |       0 | Significant   |
| mortno      |     4.485 |       0 | Significant   |
| unem        |    -1.772 |   0.076 | Insignificant |
| dep         |     -2.61 |   0.009 | Significant   |
| male        |     0.116 |   0.907 | Insignificant |
| married     |      2.57 |    0.01 | Significant   |
| yjob        |    -0.101 |    0.92 | Insignificant |
| self        |    -1.612 |   0.107 | Insignificant |

Critical value: 1.96

### Approve equation No. 2 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` and test
the significance of its coefficients. Significance level 5.0%. For each
coefficient, report - its test statistic, - P-value - critical value -
and draw a conclusion.

**Round your answer to 3 decimal places**

Answer:

| Coefficient      | Test stat | P-value | Conclusion    |
|:-----------------|----------:|--------:|:--------------|
| Intercept        |     8.212 |       0 | Significant   |
| appinc           |     1.742 |   0.082 | Insignificant |
| I(appinc \*\* 2) |    -2.268 |   0.023 | Significant   |
| mortno           |     4.132 |       0 | Significant   |
| unem             |    -1.729 |   0.084 | Insignificant |
| dep              |    -2.215 |   0.027 | Significant   |
| male             |    -0.076 |    0.94 | Insignificant |
| married          |     2.378 |   0.017 | Significant   |
| yjob             |    -0.113 |    0.91 | Insignificant |
| self             |    -1.813 |    0.07 | Insignificant |

Critical value: 1.96

### Labour force equation No. 1 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)` and test the
significance of its coefficients. Significance level 1.0%. For each
coefficient, report - its test statistic, - P-value - critical value -
and draw a conclusion.

**Round your answer to 3 decimal places**

Answer:

| Coefficient    | Test stat | P-value | Conclusion    |
|:---------------|----------:|--------:|:--------------|
| Intercept      |    -1.144 |   0.253 | Insignificant |
| WA             |      0.06 |   0.952 | Insignificant |
| I(WA \*\* 2)   |    -0.606 |   0.544 | Insignificant |
| WE             |     4.453 |       0 | Significant   |
| KL6            |    -7.115 |       0 | Significant   |
| K618           |    -1.517 |   0.129 | Insignificant |
| CIT            |    -1.227 |    0.22 | Insignificant |
| UN             |    -0.681 |   0.496 | Insignificant |
| np.log(FAMINC) |     1.927 |   0.054 | Insignificant |

Critical value: 2.576

### Labour force equation No. 2 (probit)

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WA+WE+CIT+UN+np.log(FAMINC)` and test the significance of its
coefficients. Significance level 5.0%. For each coefficient, report -
its test statistic, - P-value - critical value - and draw a conclusion.

**Round your answer to 3 decimal places**

Answer:

| Coefficient    | Test stat | P-value | Conclusion    |
|:---------------|----------:|--------:|:--------------|
| Intercept      |    -2.875 |   0.004 | Significant   |
| WA             |    -1.621 |   0.105 | Insignificant |
| WE             |     3.909 |       0 | Significant   |
| CIT            |    -1.229 |   0.219 | Insignificant |
| UN             |    -0.876 |   0.381 | Insignificant |
| np.log(FAMINC) |     2.426 |   0.015 | Significant   |

Critical value: 1.96

### Swiss labour force equation No. 1 (logit)

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+education+youngkids+oldkids+foreign`
and test the significance of its coefficients. Significance level 10.0%.
For each coefficient, report - its test statistic, - P-value - critical
value - and draw a conclusion.

**Round your answer to 3 decimal places**

Answer:

| Coefficient      | Test stat | P-value | Conclusion    |
|:-----------------|----------:|--------:|:--------------|
| Intercept        |    -0.731 |   0.465 | Insignificant |
| income           |     0.753 |   0.452 | Insignificant |
| I(income \*\* 2) |     -1.08 |    0.28 | Insignificant |
| age              |     4.977 |       0 | Significant   |
| I(age \*\* 2)    |    -5.684 |       0 | Significant   |
| education        |     1.223 |   0.221 | Insignificant |
| youngkids        |     -6.87 |       0 | Significant   |
| oldkids          |    -2.814 |   0.005 | Significant   |
| foreign          |     5.734 |       0 | Significant   |

Critical value: 1.645

## LR test: overall significance of regression

Test the hypothesis

$$
    H_0:\beta_1=\cdots=\beta_k=0
$$

Test statistic

$$
    LR=2\left(\log L-\log L_0\right)
$$

### Approve equation No. 1

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on `appinc+unem+male+yjob+self`. Test overall significance of
the regression. Significance level **10.0%**. Find - the value of the
test statistic, - its P-value, - the critical value - and draw a
conclusion.

**Round your answer to 3 decimal places**. Which coefficients are
significant?

Answer:

| Statistic | P-value | Critical | Regression    |
|----------:|--------:|---------:|:--------------|
|     8.573 |   0.127 |    11.07 | insignificant |

| Coefficient | Test stat | P-value | Conclusion      |
|:------------|----------:|--------:|:----------------|
| Intercept   |    11.981 |       0 | Significant     |
| appinc      |    -0.988 |   0.323 | Not significant |
| unem        |    -2.139 |   0.032 | Significant     |
| male        |     1.147 |   0.251 | Not significant |
| yjob        |     0.178 |   0.859 | Not significant |
| self        |    -1.194 |   0.233 | Not significant |

### Approve equation No. 2

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`. Test
overall significance of the regression. Significance level **5.0%**.
Find - the value of the test statistic, - its P-value, - the critical
value - and draw a conclusion.

**Round your answer to 3 decimal places**. Which coefficients are
significant?

Answer:

| Statistic | P-value | Critical | Regression  |
|----------:|--------:|---------:|:------------|
|    48.496 |       0 |   19.023 | significant |

| Coefficient      | Test stat | P-value | Conclusion      |
|:-----------------|----------:|--------:|:----------------|
| Intercept        |     7.363 |       0 | Significant     |
| appinc           |     1.724 |   0.085 | Not significant |
| I(appinc \*\* 2) |    -2.226 |   0.026 | Significant     |
| mortno           |     4.042 |       0 | Significant     |
| unem             |    -1.685 |   0.092 | Not significant |
| dep              |    -2.371 |   0.018 | Significant     |
| male             |     -0.11 |   0.912 | Not significant |
| married          |     2.438 |   0.015 | Significant     |
| yjob             |    -0.156 |   0.876 | Not significant |
| self             |    -1.801 |   0.072 | Not significant |

### Labour force equation No. 1

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `K618+CIT+UN`. Test overall significance of the regression.
Significance level **5.0%**. Find - the value of the test statistic, -
its P-value, - the critical value - and draw a conclusion.

**Round your answer to 3 decimal places**. Which coefficients are
significant?

Answer:

| Statistic | P-value | Critical | Regression    |
|----------:|--------:|---------:|:--------------|
|     0.625 |   0.891 |    9.348 | insignificant |

| Coefficient | Test stat | P-value | Conclusion      |
|:------------|----------:|--------:|:----------------|
| Intercept   |     1.855 |   0.064 | Not significant |
| K618        |    -0.056 |   0.955 | Not significant |
| CIT         |    -0.028 |   0.978 | Not significant |
| UN          |    -0.769 |   0.442 | Not significant |

### Labour force equation No. 2

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WA+I(WA**2)+K618+CIT+UN`. Test overall significance of the
regression. Significance level **1.0%**. Find - the value of the test
statistic, - its P-value, - the critical value - and draw a conclusion.

**Round your answer to 3 decimal places**. Which coefficients are
significant?

Answer:

| Statistic | P-value | Critical | Regression    |
|----------:|--------:|---------:|:--------------|
|    13.179 |   0.022 |    16.75 | insignificant |

| Coefficient  | Test stat | P-value | Conclusion      |
|:-------------|----------:|--------:|:----------------|
| Intercept    |    -1.886 |   0.059 | Not significant |
| WA           |     2.396 |   0.017 | Not significant |
| I(WA \*\* 2) |    -2.633 |   0.008 | Significant     |
| K618         |    -1.655 |   0.098 | Not significant |
| CIT          |      0.03 |   0.976 | Not significant |
| UN           |    -0.595 |   0.552 | Not significant |

### Swiss labour force equation No. 1

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on `income+I(income**2)+education`. Test overall
significance of the regression. Significance level **10.0%**. Find - the
value of the test statistic, - its P-value, - the critical value - and
draw a conclusion.

**Round your answer to 3 decimal places**. Which coefficients are
significant?

Answer:

| Statistic | P-value | Critical | Regression  |
|----------:|--------:|---------:|:------------|
|      33.2 |       0 |    7.815 | significant |

| Coefficient      | Test stat | P-value | Conclusion      |
|:-----------------|----------:|--------:|:----------------|
| Intercept        |    -1.462 |   0.144 | Not significant |
| income           |     1.733 |   0.083 | Significant     |
| I(income \*\* 2) |    -1.984 |   0.047 | Significant     |
| education        |    -1.136 |   0.256 | Not significant |

## Wald test: joint significance

### Approve equation No. 1 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` Test the
hypotheses below. For each hypothesis - give an interpretation, - find
the test statistic, - its P-value, - the critical value - and draw a
conclusion.

**Round your answer to 3 decimal places**

#### Hypothesis No. 1

Test the joint significance of `appinc, appinc**2`. Significance level
**1.0%**

Answer:

| Statistic | P-value | Critical | Joint effect  |
|----------:|--------:|---------:|:--------------|
|     7.032 |    0.03 |     9.21 | insignificant |

#### Hypothesis No. 2

Test the joint significance of `male, yjob, self`. Significance level
**5.0%**

Answer:

| Statistic | P-value | Critical | Joint effect  |
|----------:|--------:|---------:|:--------------|
|     3.296 |   0.348 |    7.815 | insignificant |

#### Hypothesis No. 3

Test the joint significance of `male, yjob, self, unem, married`.
Significance level **1.0%**

Answer:

| Statistic | P-value | Critical | Joint effect  |
|----------:|--------:|---------:|:--------------|
|    13.864 |   0.016 |   15.086 | insignificant |

### Labour force equation No. 1 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)` Test the hypotheses
below. For each hypothesis - give an interpretation, - find the test
statistic, - its P-value, - the critical value - and draw a conclusion.

**Round your answer to 3 decimal places**

#### Hypothesis No. 1

Test the joint significance of `WA, WA**2`. Significance level **1.0%**

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|    25.533 |       0 |     9.21 | significant  |

#### Hypothesis No. 2

Test the joint significance of `K618, CIT, UN`. Significance level
**10.0%**

Answer:

| Statistic | P-value | Critical | Joint effect  |
|----------:|--------:|---------:|:--------------|
|     4.771 |   0.189 |    6.251 | insignificant |

#### Hypothesis No. 3

Test the joint significance of `K618, CIT, UN, FAMINC`. Significance
level **10.0%**

Answer:

| Statistic | P-value | Critical | Joint effect  |
|----------:|--------:|---------:|:--------------|
|     7.337 |   0.119 |    7.779 | insignificant |

### Swiss labour force equation No. 1 (logit)

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+education+youngkids+oldkids+foreign`
Test the hypotheses below. For each hypothesis - give an
interpretation, - find the test statistic, - its P-value, - the critical
value - and draw a conclusion.

**Round your answer to 3 decimal places**

#### Hypothesis No. 1

Test the joint significance of `income, income**2`. Significance level
**10.0%**

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|    25.479 |       0 |    4.605 | significant  |

#### Hypothesis No. 2

Test the joint significance of `age, age**2`. Significance level
**5.0%**

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|    55.477 |       0 |    5.991 | significant  |

#### Hypothesis No. 3

Test the joint significance of `youngkids, oldkids`. Significance level
**10.0%**

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|    48.293 |       0 |    4.605 | significant  |

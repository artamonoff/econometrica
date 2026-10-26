# Problems in Econometrics-2: LPM model
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [Model specification](#model-specification)
- [Model fitting](#model-fitting)
  - [Approve equation No. 1](#approve-equation-no-1)
  - [Approve equation No. 2](#approve-equation-no-2)
  - [Labour force equation No. 1](#labour-force-equation-no-1)
  - [Labour force equation No. 2](#labour-force-equation-no-2)
  - [Swiss labour force equation
    No. 1](#swiss-labour-force-equation-no-1)
- [t-test](#t-test)
  - [Approve equation No. 1](#approve-equation-no-1-1)
  - [Approve equation No. 2](#approve-equation-no-2-1)
  - [Labour force equation No. 1](#labour-force-equation-no-1-1)
  - [Labour force equation No. 2](#labour-force-equation-no-2-1)
  - [Swiss labour force equation
    No. 1](#swiss-labour-force-equation-no-1-1)
- [F-test: Significance of
  regression](#f-test-significance-of-regression)
  - [Approve equation No. 1](#approve-equation-no-1-2)
  - [Approve equation No. 2](#approve-equation-no-2-2)
  - [Approve equation No. 3](#approve-equation-no-3)
  - [Swiss labour force equation
    No. 1](#swiss-labour-force-equation-no-1-2)
- [F-test: Joint significance](#f-test-joint-significance)
  - [Approve equation No. 1](#approve-equation-no-1-3)
    - [Hypothesis No. 1](#hypothesis-no-1)
    - [Hypothesis No. 2](#hypothesis-no-2)
  - [Swiss labour force equation
    No. 1](#swiss-labour-force-equation-no-1-3)
    - [Hypothesis No. 1](#hypothesis-no-1-1)
    - [Hypothesis No. 2](#hypothesis-no-2-1)
- [Prediction](#prediction)
  - [Approve equation](#approve-equation)
  - [labour force equation](#labour-force-equation)
  - [Swiss labour force equation](#swiss-labour-force-equation)

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

Linear specification with a binary dependent variable

$$
    y=x^\top\beta+u
$$

Alternative specification

$$
    P(y=1)=x^\top\beta
$$

## Model fitting

### Approve equation No. 1

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `mortno+unem+dep+male+married+yjob+self` and report its coefficients.
**Round your answer to 3 decimal places**

Answer:

| Coefficient | Estimate |
|:------------|---------:|
| Intercept   |    0.864 |
| mortno      |    0.073 |
| unem        |   -0.006 |
| dep         |   -0.018 |
| male        |    0.002 |
| married     |    0.046 |
| yjob        |   -0.001 |
| self        |   -0.036 |

**Interpret the coefficients of the model**

### Approve equation No. 2

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` and
report its coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient      | Estimate |
|:-----------------|---------:|
| Intercept        |    0.842 |
| appinc           |    0.001 |
| I(appinc \*\* 2) |       -0 |
| mortno           |    0.066 |
| unem             |   -0.006 |
| dep              |   -0.017 |
| male             |   -0.003 |
| married          |    0.043 |
| yjob             |   -0.001 |
| self             |    -0.04 |

**Interpret the coefficients of the model**

### Labour force equation No. 1

For the dataset `TableF5-1`, estimate the **LPM** regression of `LFP` on
`WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)` and report its
coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient    | Estimate |
|:---------------|---------:|
| Intercept      |   -0.321 |
| WA             |    0.008 |
| I(WA \*\* 2)   |       -0 |
| WE             |    0.038 |
| KL6            |   -0.296 |
| K618           |   -0.021 |
| CIT            |   -0.048 |
| UN             |   -0.004 |
| np.log(FAMINC) |    0.072 |

**Interpret the coefficients of the model**

### Labour force equation No. 2

For the dataset `TableF5-1`, estimate the **LPM** regression of `LFP` on
`WA+WE+CIT+UN+np.log(FAMINC)` and report its coefficients. **Round your
answer to 3 decimal places**

Answer:

| Coefficient    | Estimate |
|:---------------|---------:|
| Intercept      |   -0.536 |
| WA             |   -0.004 |
| WE             |    0.033 |
| CIT            |   -0.048 |
| UN             |   -0.005 |
| np.log(FAMINC) |    0.094 |

**Interpret the coefficients of the model**

### Swiss labour force equation No. 1

For the dataset `SwissLabour`, estimate the **LPM** regression of
`participation` on `income+age+education+youngkids+oldkids` and report
its coefficients. **Round your answer to 3 decimal places**

Answer:

| Coefficient | Estimate |
|:------------|---------:|
| Intercept   |    3.141 |
| income      |   -0.189 |
| age         |   -0.122 |
| education   |    -0.01 |
| youngkids   |   -0.248 |
| oldkids     |   -0.001 |

**Interpret the coefficients of the model**

## t-test

### Approve equation No. 1

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `mortno+unem+dep+male+married+yjob+self` and test the significance of
its coefficients. Significance level 5.0%, number of observations 1971.
For each coefficient, report its test statistic, P-value, and draw a
conclusion. Find the corresponding critical value. **Round your answer
to 3 decimal places**

Answer:

| Coefficient | Test stat | P-value | Conclusion    |
|:------------|----------:|--------:|:--------------|
| Intercept   |    37.135 |       0 | Significant   |
| mortno      |     4.886 |       0 | Significant   |
| unem        |    -1.605 |   0.108 | Insignificant |
| dep         |    -2.429 |   0.015 | Significant   |
| male        |     0.089 |   0.929 | Insignificant |
| married     |     2.458 |   0.014 | Significant   |
| yjob        |    -0.107 |   0.915 | Insignificant |
| self        |    -1.464 |   0.143 | Insignificant |

Critical value: 1.961

### Approve equation No. 2

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` and test
the significance of its coefficients. Significance level 1.0%, number of
observations 1971. For each coefficient, report its test statistic,
P-value, and draw a conclusion. Find the corresponding critical value.
**Round your answer to 3 decimal places**

Answer:

| Coefficient      | Test stat | P-value | Conclusion    |
|:-----------------|----------:|--------:|:--------------|
| Intercept        |    31.003 |       0 | Significant   |
| appinc           |     1.958 |    0.05 | Insignificant |
| I(appinc \*\* 2) |    -2.374 |   0.018 | Insignificant |
| mortno           |     4.321 |       0 | Significant   |
| unem             |    -1.515 |    0.13 | Insignificant |
| dep              |     -2.28 |   0.023 | Insignificant |
| male             |    -0.135 |   0.893 | Insignificant |
| married          |     2.309 |   0.021 | Insignificant |
| yjob             |     -0.14 |   0.889 | Insignificant |
| self             |    -1.602 |   0.109 | Insignificant |

Critical value: 2.578

### Labour force equation No. 1

For the dataset `TableF5-1`, estimate the **LPM** regression of `LFP` on
`WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)` and test the
significance of its coefficients. Significance level 1.0%, number of
observations 753. For each coefficient, report its test statistic,
P-value, and draw a conclusion. Find the corresponding critical value.
**Round your answer to 3 decimal places**

Answer:

| Coefficient    | Test stat | P-value | Conclusion    |
|:---------------|----------:|--------:|:--------------|
| Intercept      |    -0.549 |   0.583 | Insignificant |
| WA             |     0.307 |   0.759 | Insignificant |
| I(WA \*\* 2)   |    -0.843 |   0.399 | Insignificant |
| WE             |     4.736 |       0 | Significant   |
| KL6            |    -8.763 |       0 | Significant   |
| K618           |    -1.409 |   0.159 | Insignificant |
| CIT            |      -1.3 |   0.193 | Insignificant |
| UN             |    -0.633 |   0.527 | Insignificant |
| np.log(FAMINC) |     1.921 |   0.055 | Insignificant |

Critical value: 2.582

### Labour force equation No. 2

For the dataset `TableF5-1`, estimate the **LPM** regression of `LFP` on
`WA+WE+CIT+UN+np.log(FAMINC)` and test the significance of its
coefficients. Significance level 5.0%, number of observations 753. For
each coefficient, report its test statistic, P-value, and draw a
conclusion. Find the corresponding critical value. **Round your answer
to 3 decimal places**

Answer:

| Coefficient    | Test stat | P-value | Conclusion    |
|:---------------|----------:|--------:|:--------------|
| Intercept      |    -1.457 |   0.145 | Insignificant |
| WA             |    -1.635 |   0.102 | Insignificant |
| WE             |     4.036 |       0 | Significant   |
| CIT            |    -1.212 |   0.226 | Insignificant |
| UN             |    -0.855 |   0.392 | Insignificant |
| np.log(FAMINC) |     2.351 |   0.019 | Significant   |

Critical value: 1.963

### Swiss labour force equation No. 1

For the dataset `SwissLabour`, estimate the **LPM** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+education+youngkids+oldkids+foreign`
and test the significance of its coefficients. Significance level 10.0%,
number of observations 872. For each coefficient, report its test
statistic, P-value, and draw a conclusion. Find the corresponding
critical value. **Round your answer to 3 decimal places**

Answer:

| Coefficient      | Test stat | P-value | Conclusion    |
|:-----------------|----------:|--------:|:--------------|
| Intercept        |    -0.097 |   0.922 | Insignificant |
| income           |     0.202 |    0.84 | Insignificant |
| I(income \*\* 2) |    -0.427 |   0.669 | Insignificant |
| age              |      5.56 |       0 | Significant   |
| I(age \*\* 2)    |    -6.496 |       0 | Significant   |
| education        |      1.22 |   0.223 | Insignificant |
| youngkids        |     -7.83 |       0 | Significant   |
| oldkids          |    -2.749 |   0.006 | Significant   |
| foreign          |     6.145 |       0 | Significant   |

Critical value: 1.647

## F-test: Significance of regression

For the regression

$$
    P(y=1)=x^\top\beta=\beta_0+\beta_1x_1+\cdots+\beta_kx_k
$$

test the hypothesis

$$
    H_0:\beta_1=\cdots=\beta_k=0
$$

### Approve equation No. 1

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `unem+male+yjob+self`. Test the overall significance of the
regression. Significance level 10.0%. Find the value of the test
statistic, its P-value, the critical value, and draw a conclusion.
**Round your answer to 3 decimal places**

Answer:

| Statistic | P-value | Critical | Regression    |
|----------:|--------:|---------:|:--------------|
|     1.677 |   0.153 |    1.948 | insignificant |

### Approve equation No. 2

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `appinc+I(appinc**2)+mortno+dep`. Test the overall significance of
the regression. Significance level 5.0%. Find the value of the test
statistic, its P-value, the critical value, and draw a conclusion.
**Round your answer to 3 decimal places**

Answer:

| Statistic | P-value | Critical | Regression  |
|----------:|--------:|---------:|:------------|
|     8.188 |       0 |    2.376 | significant |

### Approve equation No. 3

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `dep+male+married`. Test the overall significance of the regression.
Significance level 1.0%. Find the value of the test statistic, its
P-value, the critical value, and draw a conclusion. **Round your answer
to 3 decimal places**

Answer:

| Statistic | P-value | Critical | Regression    |
|----------:|--------:|---------:|:--------------|
|     3.724 |   0.011 |    3.792 | insignificant |

### Swiss labour force equation No. 1

For the dataset `SwissLabour`, estimate the **LPM** regression of
`participation` on `income+I(income**2)+education`. Test the overall
significance of the regression. Significance level 5.0%. Find the value
of the test statistic, its P-value, the critical value, and draw a
conclusion. **Round your answer to 3 decimal places**

Answer:

| Statistic | P-value | Critical | Regression  |
|----------:|--------:|---------:|:------------|
|    14.239 |       0 |    2.615 | significant |

## F-test: Joint significance

### Approve equation No. 1

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self` Test the
hypotheses below. For each hypothesis, give an interpretation, find the
test statistic, its P-value, the critical value, and draw a conclusion.
**Round your answer to 3 decimal places**

#### Hypothesis No. 1

Test the joint significance of `appinc, appinc**2`. Significance level
5.0%

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|     5.149 |   0.006 |    1.077 | significant  |

#### Hypothesis No. 2

Test the joint significance of `unem, dep, married`. Significance level
1.0%

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|     4.054 |   0.007 |    1.111 | significant  |

### Swiss labour force equation No. 1

For the dataset `SwissLabour`, estimate the **LPM** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+education+youngkids+oldkids+foreign`
Test the hypotheses below. For each hypothesis, give an interpretation,
find the test statistic, its P-value, the critical value, and draw a
conclusion. **Round your answer to 3 decimal places**

#### Hypothesis No. 1

Test the joint significance of `income, income**2`. Significance level
5.0%

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|    13.974 |       0 |    1.119 | significant  |

#### Hypothesis No. 2

Test the joint significance of `age, age**2`. Significance level 10.0%

Answer:

| Statistic | P-value | Critical | Joint effect |
|----------:|--------:|---------:|:-------------|
|     34.39 |       0 |    1.091 | significant  |

## Prediction

### Approve equation

For the dataset `loanapp`, estimate the **LPM** regression of `approve`
on `mortno+unem+dep+married`. Consider the new data

| mortno | unem | dep | married |
|-------:|-----:|----:|--------:|
|      1 |  3.2 |   0 |       1 |
|      1 |  3.9 |   1 |       0 |
|      0 |  1.8 |   0 |       1 |

Calculate a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

| Prediction |
|-----------:|
|      0.959 |
|       0.89 |
|      0.899 |

### labour force equation

For the dataset `TableF5-1`, estimate the **LPM** regression of `LFP` on
`WA+I(WA**2)+CIT+UN+np.log(FAMINC)`. Consider the new data

|  WA | CIT |  UN | FAMINC |
|----:|----:|----:|-------:|
|  34 |   1 |   3 |  35000 |
|  36 |   0 |   5 |  48500 |
|  42 |   0 | 7.5 |  67800 |

Calculate a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

| Prediction |
|-----------:|
|      0.686 |
|      0.771 |
|      0.804 |

### Swiss labour force equation

For the dataset `SwissLabour`, estimate the **LPM** regression of
`participation` on
`income+I(income**2)+age+education+youngkids+oldkids`. Consider the new
data

| income | age | education | youngkids | oldkids |
|-------:|----:|----------:|----------:|--------:|
|   11.9 | 3.2 |         8 |         1 |       0 |
|  10.49 |   2 |        19 |         0 |       0 |
|  11.02 | 4.4 |        12 |         2 |       1 |

Calculate a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

| Prediction |
|-----------:|
|      0.119 |
|      0.731 |
|     -0.092 |

# Problems in Econometrics-2: Prediction for logit/probit models
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [<span class="toc-section-number">0.1</span> Approve
  equation](#approve-equation)
- [<span class="toc-section-number">0.2</span> labour force
  equation](#labour-force-equation)
- [<span class="toc-section-number">0.3</span> swiss labour force
  equation](#swiss-labour-force-equation)

### Approve equation

For the dataset `loanapp`, estimate the **probit** and **logit**
regressions of `approve` on `I(appinc/100)+mortno+unem+dep+male` using
the following specifications: - LPM - logit - probit

Consider the new observations:

| appinc | mortno | unem | dep | married | male |
|-------:|-------:|-----:|----:|--------:|-----:|
|    120 |      1 |  1.8 |   0 |       1 |    1 |
|     48 |      1 |  3.2 |   0 |       0 |    0 |
|     82 |      0 |  3.9 |   1 |       1 |    1 |

Compute a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.953 | 0.941 |  0.943 |
| 0.933 |  0.93 |   0.93 |
| 0.851 | 0.853 |  0.853 |

### labour force equation

For the dataset `TableF5-1`, estimate the **probit** and **logit**
regressions of `LFP` on `WA+np.log(FAMINC)+WE+KL6+K618+CIT+UN` using the
following specifications: - LPM - logit - probit

Consider the new observations:

|  WA | CIT |  UN | FAMINC | KL6 | K618 |  WE |
|----:|----:|----:|-------:|----:|-----:|----:|
|  34 |   1 |   5 |  12500 |   2 |    0 |  15 |
|  36 |   0 | 7.5 |   9800 |   1 |    2 |  12 |
|  42 |   1 |   3 |  67800 |   2 |    1 |  14 |

Compute a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.234 | 0.219 |  0.225 |
| 0.382 | 0.356 |  0.362 |
| 0.207 | 0.192 |  0.196 |

### swiss labour force equation

For the dataset `SwissLabour`, estimate the **probit** and **logit**
regressions of `participation` on
`income+I(income**2)+age+I(age**2)+youngkids+oldkids` using the
following specifications: - LPM - logit - probit

Consider the new observations:

| income | age | youngkids | oldkids |
|-------:|----:|----------:|--------:|
|  1.367 | 2.5 |         0 |       0 |
|  9.217 | 3.7 |         2 |       0 |
| 10.686 | 4.2 |         2 |       1 |

Compute a prediction for each observation and give an interpretation.
**Round your answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.886 | 0.006 |      0 |
| 0.606 | 0.626 |  0.624 |
|  0.18 | 0.182 |  0.186 |

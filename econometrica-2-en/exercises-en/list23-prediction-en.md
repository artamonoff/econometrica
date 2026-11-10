# Problems in Econometrics-2: Prediction for logit/probit models
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [<span class="toc-section-number">1</span> Approve
  equation](#approve-equation)
- [<span class="toc-section-number">2</span> Labour force
  equation](#labour-force-equation)
- [<span class="toc-section-number">3</span> Swiss labour force
  equation](#swiss-labour-force-equation)

## Approve equation

For dataset `loanapp`, estimate the **probit** and **logit** regressions
of `approve` on `appinc+I(appinc**2)+mortno+unem+dep+male` for the
following specifications:

- LPM
- logit
- probit

Consider new observations:

| appinc | mortno | unem | dep | married | male |
|-------:|-------:|-----:|----:|--------:|-----:|
|    120 |      1 |  1.8 |   0 |       1 |    1 |
|     48 |      1 |  3.2 |   0 |       0 |    0 |
|     82 |      0 |  3.9 |   1 |       1 |    1 |

Calculate a prediction for each observation and interpret it. **Round
the answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.966 | 0.947 |  0.949 |
| 0.921 | 0.923 |  0.923 |
| 0.859 | 0.861 |  0.861 |

## Labour force equation

For dataset `TableF5-1`, estimate the **probit** and **logit**
regressions of `LFP` on `WA+np.log(FAMINC)+WE+KL6+K618+CIT+UN` for the
following specifications:

- LPM
- logit
- probit

Consider new observations:

|  WA | CIT |  UN | FAMINC | KL6 | K618 |  WE |
|----:|----:|----:|-------:|----:|-----:|----:|
|  34 |   1 |   5 |  12500 |   2 |    0 |  15 |
|  36 |   0 | 7.5 |   9800 |   1 |    2 |  12 |
|  42 |   1 |   3 |  67800 |   2 |    1 |  14 |

Calculate a prediction for each observation and interpret it. **Round
the answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.234 | 0.219 |  0.225 |
| 0.382 | 0.356 |  0.362 |
| 0.207 | 0.192 |  0.196 |

## Swiss labour force equation

For dataset `SwissLabour`, estimate the **probit** and **logit**
regressions of `participation` on
`income+I(income**2)+age+I(age**2)+youngkids+oldkids` for the following
specifications:

- LPM
- logit
- probit

Consider new observations:

| income | age | youngkids | oldkids |
|-------:|----:|----------:|--------:|
|  1.367 | 2.5 |         0 |       0 |
|  9.217 | 3.7 |         2 |       0 |
| 10.686 | 4.2 |         2 |       1 |

Calculate a prediction for each observation and interpret it. **Round
the answer to 3 decimal places**

Answer:

|   LPM | logit | probit |
|------:|------:|-------:|
| 0.886 | 0.006 |      0 |
| 0.606 | 0.626 |  0.624 |
|  0.18 | 0.182 |  0.186 |

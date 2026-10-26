# Problems in Econometrics-2: Goodness of fit and model comparison
N.V. Artamonov, A.N. Lata (MGIMO MFA of Russia)

- [<span class="toc-section-number">1</span> Goodness of
  fit](#goodness-of-fit)
  - [<span class="toc-section-number">1.1</span> Approve equation No. 1
    (logit)](#approve-equation-no-1-logit)
  - [<span class="toc-section-number">1.2</span> Approve equation No. 1
    (probit)](#approve-equation-no-1-probit)
  - [<span class="toc-section-number">1.3</span> Approve equation No. 2
    (logit)](#approve-equation-no-2-logit)
  - [<span class="toc-section-number">1.4</span> Approve equation No. 2
    (probit)](#approve-equation-no-2-probit)
  - [<span class="toc-section-number">1.5</span> Approve equation No. 3
    (logit)](#approve-equation-no-3-logit)
  - [<span class="toc-section-number">1.6</span> Approve equation No. 3
    (probit)](#approve-equation-no-3-probit)
  - [<span class="toc-section-number">1.7</span> labour force equation
    No. 1 (logit)](#labour-force-equation-no-1-logit)
  - [<span class="toc-section-number">1.8</span> labour force equation
    No. 1 (probit)](#labour-force-equation-no-1-probit)
  - [<span class="toc-section-number">1.9</span> labour force equation
    No. 2 (logit)](#labour-force-equation-no-2-logit)
  - [<span class="toc-section-number">1.10</span> labour force equation
    No. 2 (probit)](#labour-force-equation-no-2-probit)
  - [<span class="toc-section-number">1.11</span> labour force equation
    No. 3 (logit)](#labour-force-equation-no-3-logit)
  - [<span class="toc-section-number">1.12</span> labour force equation
    No. 3 (probit)](#labour-force-equation-no-3-probit)
  - [<span class="toc-section-number">1.13</span> swiss labour force
    equation No. 1 (logit)](#swiss-labour-force-equation-no-1-logit)
  - [<span class="toc-section-number">1.14</span> swiss labour force
    equation No. 1 (probit)](#swiss-labour-force-equation-no-1-probit)
  - [<span class="toc-section-number">1.15</span> swiss labour force
    equation No. 2 (logit)](#swiss-labour-force-equation-no-2-logit)
  - [<span class="toc-section-number">1.16</span> swiss labour force
    equation No. 2 (probit)](#swiss-labour-force-equation-no-2-probit)
- [<span class="toc-section-number">2</span> Model
  comparison](#model-comparison)
  - [<span class="toc-section-number">2.1</span> Approve equation
    (logit)](#approve-equation-logit)
  - [<span class="toc-section-number">2.2</span> labour force equation
    (probit)](#labour-force-equation-probit)
  - [<span class="toc-section-number">2.3</span> swiss labour force
    equation (logit)](#swiss-labour-force-equation-logit)

## Goodness of fit

### Approve equation No. 1 (logit)

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`. Compute
the following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.033 |        0.019 |     0.024 |                  0.046 | 0.027 |            0.066 |

### Approve equation No. 1 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`. Compute
the following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.033 |        0.019 |     0.024 |                  0.046 | 0.027 |            0.061 |

### Approve equation No. 2 (logit)

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on `mortno+unem+dep+male+married+yjob+self`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.028 |        0.017 |     0.021 |                  0.039 | 0.022 |             0.06 |

### Approve equation No. 2 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on `mortno+unem+dep+male+married+yjob+self`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.028 |        0.017 |     0.021 |                  0.039 | 0.021 |            0.055 |

### Approve equation No. 3 (logit)

For the dataset `loanapp`, estimate the **logit** regression of
`approve` on `appinc+I(appinc**2)+mortno+unem+dep`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.026 |        0.018 |     0.019 |                  0.037 | 0.021 |            0.054 |

### Approve equation No. 3 (probit)

For the dataset `loanapp`, estimate the **probit** regression of
`approve` on `appinc+I(appinc**2)+mortno+unem+dep`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.026 |        0.018 |     0.019 |                  0.037 | 0.021 |            0.049 |

### labour force equation No. 1 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.102 |        0.085 |      0.13 |                  0.175 | 0.133 |            0.179 |

### labour force equation No. 1 (probit)

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.102 |        0.085 |      0.13 |                  0.175 | 0.133 |            0.207 |

### labour force equation No. 2 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Compute the following
goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.076 |        0.063 |     0.099 |                  0.133 |   0.1 |            0.133 |

### labour force equation No. 2 (probit)

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Compute the following
goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.076 |        0.062 |     0.099 |                  0.133 |   0.1 |            0.158 |

### labour force equation No. 3 (logit)

For the dataset `TableF5-1`, estimate the **logit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6`. Compute the following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.095 |        0.085 |     0.122 |                  0.163 | 0.123 |            0.167 |

### labour force equation No. 3 (probit)

For the dataset `TableF5-1`, estimate the **probit** regression of `LFP`
on `WA+I(WA**2)+WE+KL6`. Compute the following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.095 |        0.085 |     0.122 |                  0.163 | 0.123 |            0.195 |

### swiss labour force equation No. 1 (logit)

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+youngkids+oldkids`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.125 |        0.113 |     0.158 |                  0.212 | 0.162 |            0.224 |

### swiss labour force equation No. 1 (probit)

For the dataset `SwissLabour`, estimate the **probit** regression of
`participation` on
`income+I(income**2)+age+I(age**2)+youngkids+oldkids`. Compute the
following goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.125 |        0.113 |     0.158 |                  0.211 | 0.161 |            0.256 |

### swiss labour force equation No. 2 (logit)

For the dataset `SwissLabour`, estimate the **logit** regression of
`participation` on `income+age+youngkids+oldkids`. Compute the following
goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.084 |        0.076 |      0.11 |                  0.146 | 0.112 |            0.154 |

### swiss labour force equation No. 2 (probit)

For the dataset `SwissLabour`, estimate the **probit** regression of
`participation` on `income+age+youngkids+oldkids`. Compute the following
goodness-of-fit measures:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Round your answer to 3 decimal places**

Answer:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.083 |        0.075 |     0.109 |                  0.145 | 0.111 |            0.177 |

## Model comparison

### Approve equation (logit)

For the dataset `loanapp`, estimate the **logit** regressions of
`approve` on

- `appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`
- `mortno+unem+dep+male+married+yjob+self`
- `appinc+I(appinc**2)+mortno+unem+dep+married`
- `appinc+I(appinc**2)+mortno+unem+dep`

For each model, compute the information criteria AIC and BIC and the
adjusted R<sup>2</sup><sub>pseudo</sub>. **Round your answer to 3
decimal places**. Which model is preferable according to the information
criteria and adjusted R<sup>2</sup><sub>pseudo</sub>?

Answer:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 | 1447.46 | 1503.33 |        0.019 |
|        1 | 1450.86 | 1495.55 |        0.017 |
|        2 | 1448.77 | 1487.93 |        0.021 |
|        3 | 1453.24 |  1486.8 |        0.018 |

Preferred model:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[0\] | \[3\] | \[2\]        |

### labour force equation (probit)

For the dataset `TableF5-1`, estimate the **probit** regressions of
`LFP` on

- `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`
- `WE+KL6+K618+CIT+UN+np.log(FAMINC)`
- `WA+I(WA**2)+WE+KL6+np.log(FAMINC)`
- `WA+I(WA**2)+WE+KL6`

For each model, compute the information criteria AIC and BIC and the
adjusted R<sup>2</sup><sub>pseudo</sub>. **Round your answer to 3
decimal places**. Which model is preferable according to the information
criteria and adjusted R<sup>2</sup><sub>pseudo</sub>?

Answer:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 |  942.68 | 984.297 |        0.085 |
|        1 | 965.398 | 997.767 |        0.062 |
|        2 | 941.392 | 969.137 |        0.086 |
|        3 | 941.981 | 965.102 |        0.085 |

Preferred model:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[2\] | \[3\] | \[2\]        |

### swiss labour force equation (logit)

For the dataset `SwissLabour`, estimate the **logit** regressions of
`participation` on

- `income+I(income**2)+age+I(age**2)+youngkids+oldkids+education`
- `income+age+youngkids+oldkids+education`
- `np.log(income)+age+I(age**2)+youngkids+oldkids+education`
- `np.log(income)+age+youngkids+oldkids+education`

For each model, compute the information criteria AIC and BIC and the
adjusted R<sup>2</sup><sub>pseudo</sub>. **Round your answer to 3
decimal places**. Which model is preferable according to the information
criteria and adjusted R<sup>2</sup><sub>pseudo</sub>?

Answer:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 |  1067.3 | 1105.47 |        0.113 |
|        1 | 1110.91 | 1139.54 |        0.077 |
|        2 | 1066.94 | 1100.34 |        0.113 |
|        3 | 1111.57 | 1140.19 |        0.076 |

Preferred model:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[2\] | \[2\] | \[2\]        |

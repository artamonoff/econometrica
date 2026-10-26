# Задачи по Эконометрике-2: Качество подгонки и сравнение моделей
Н.В. Артамонов, А. Н. Лата (МГИМО МИД России)

- [<span class="toc-section-number">1</span> Качество
  подгонки](#качество-подгонки)
  - [<span class="toc-section-number">1.1</span> Approve equation №1
    (logit)](#approve-equation-1-logit)
  - [<span class="toc-section-number">1.2</span> Approve equation №1
    (probit)](#approve-equation-1-probit)
  - [<span class="toc-section-number">1.3</span> Approve equation №2
    (logit)](#approve-equation-2-logit)
  - [<span class="toc-section-number">1.4</span> Approve equation №2
    (probit)](#approve-equation-2-probit)
  - [<span class="toc-section-number">1.5</span> Approve equation №3
    (logit)](#approve-equation-3-logit)
  - [<span class="toc-section-number">1.6</span> Approve equation №3
    (probit)](#approve-equation-3-probit)
  - [<span class="toc-section-number">1.7</span> labour force equation
    №1 (logit)](#labour-force-equation-1-logit)
  - [<span class="toc-section-number">1.8</span> labour force equation
    №1 (probit)](#labour-force-equation-1-probit)
  - [<span class="toc-section-number">1.9</span> labour force equation
    №2 (logit)](#labour-force-equation-2-logit)
  - [<span class="toc-section-number">1.10</span> labour force equation
    №2 (probit)](#labour-force-equation-2-probit)
  - [<span class="toc-section-number">1.11</span> labour force equation
    №3 (logit)](#labour-force-equation-3-logit)
  - [<span class="toc-section-number">1.12</span> labour force equation
    №3 (probit)](#labour-force-equation-3-probit)
  - [<span class="toc-section-number">1.13</span> swiss labour force
    equation №1 (logit)](#swiss-labour-force-equation-1-logit)
  - [<span class="toc-section-number">1.14</span> swiss labour force
    equation №1 (probit)](#swiss-labour-force-equation-1-probit)
  - [<span class="toc-section-number">1.15</span> swiss labour force
    equation №2 (logit)](#swiss-labour-force-equation-2-logit)
  - [<span class="toc-section-number">1.16</span> swiss labour force
    equation №2 (probit)](#swiss-labour-force-equation-2-probit)
- [<span class="toc-section-number">2</span> Сравнение
  моделей](#сравнение-моделей)
  - [<span class="toc-section-number">2.1</span> Approve equation
    (logit)](#approve-equation-logit)
  - [<span class="toc-section-number">2.2</span> labour force equation
    (probit)](#labour-force-equation-probit)
  - [<span class="toc-section-number">2.3</span> swiss labour force
    equation (logit)](#swiss-labour-force-equation-logit)

## Качество подгонки

### Approve equation №1 (logit)

Для датасет `loanapp` оцените **logit** регрессию `approve` на
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`. Вычислите
следующие показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.033 |        0.019 |     0.024 |                  0.046 | 0.027 |            0.066 |

### Approve equation №1 (probit)

Для датасет `loanapp` оцените **probit** регрессию `approve` на
`appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`. Вычислите
следующие показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.033 |        0.019 |     0.024 |                  0.046 | 0.027 |            0.061 |

### Approve equation №2 (logit)

Для датасет `loanapp` оцените **logit** регрессию `approve` на
`mortno+unem+dep+male+married+yjob+self`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.028 |        0.017 |     0.021 |                  0.039 | 0.022 |             0.06 |

### Approve equation №2 (probit)

Для датасет `loanapp` оцените **probit** регрессию `approve` на
`mortno+unem+dep+male+married+yjob+self`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.028 |        0.017 |     0.021 |                  0.039 | 0.021 |            0.055 |

### Approve equation №3 (logit)

Для датасет `loanapp` оцените **logit** регрессию `approve` на
`appinc+I(appinc**2)+mortno+unem+dep`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.026 |        0.018 |     0.019 |                  0.037 | 0.021 |            0.054 |

### Approve equation №3 (probit)

Для датасет `loanapp` оцените **probit** регрессию `approve` на
`appinc+I(appinc**2)+mortno+unem+dep`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.026 |        0.018 |     0.019 |                  0.037 | 0.021 |            0.049 |

### labour force equation №1 (logit)

Для датасет `TableF5-1` оцените **logit** регрессию `LFP` на
`WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Вычислите следующие
показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.102 |        0.085 |      0.13 |                  0.175 | 0.133 |            0.179 |

### labour force equation №1 (probit)

Для датасет `TableF5-1` оцените **probit** регрессию `LFP` на
`WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Вычислите следующие
показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.102 |        0.085 |      0.13 |                  0.175 | 0.133 |            0.207 |

### labour force equation №2 (logit)

Для датасет `TableF5-1` оцените **logit** регрессию `LFP` на
`WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.076 |        0.063 |     0.099 |                  0.133 |   0.1 |            0.133 |

### labour force equation №2 (probit)

Для датасет `TableF5-1` оцените **probit** регрессию `LFP` на
`WE+KL6+K618+CIT+UN+np.log(FAMINC)`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.076 |        0.062 |     0.099 |                  0.133 |   0.1 |            0.158 |

### labour force equation №3 (logit)

Для датасет `TableF5-1` оцените **logit** регрессию `LFP` на
`WA+I(WA**2)+WE+KL6`. Вычислите следующие показатели качества подгонки
модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.095 |        0.085 |     0.122 |                  0.163 | 0.123 |            0.167 |

### labour force equation №3 (probit)

Для датасет `TableF5-1` оцените **probit** регрессию `LFP` на
`WA+I(WA**2)+WE+KL6`. Вычислите следующие показатели качества подгонки
модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.095 |        0.085 |     0.122 |                  0.163 | 0.123 |            0.195 |

### swiss labour force equation №1 (logit)

Для датасет `SwissLabour` оцените **logit** регрессию `participation` на
`income+I(income**2)+age+I(age**2)+youngkids+oldkids`. Вычислите
следующие показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.125 |        0.113 |     0.158 |                  0.212 | 0.162 |            0.224 |

### swiss labour force equation №1 (probit)

Для датасет `SwissLabour` оцените **probit** регрессию `participation`
на `income+I(income**2)+age+I(age**2)+youngkids+oldkids`. Вычислите
следующие показатели качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.125 |        0.113 |     0.158 |                  0.211 | 0.161 |            0.256 |

### swiss labour force equation №2 (logit)

Для датасет `SwissLabour` оцените **logit** регрессию `participation` на
`income+age+youngkids+oldkids`. Вычислите следующие показатели качества
подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.084 |        0.076 |      0.11 |                  0.146 | 0.112 |            0.154 |

### swiss labour force equation №2 (probit)

Для датасет `SwissLabour` оцените **probit** регрессию `participation`
на `income+age+youngkids+oldkids`. Вычислите следующие показатели
качества подгонки модели:

- McFadden (R<sup>2</sup><sub>pseudo</sub>)
- adjusted McFadden (adjusted R<sup>2</sup><sub>pseudo</sub>)
- Cox & Snell
- Nagelkerke/Cragg & Uhler
- Efron
- McKelvey & Zavoina

**Ответ округлите до 3-х десятичных знаков**

Ответ:

| McFadden | Adj McFadden | Cox-Snell | Nagelkerke-Cragg-Uhler | Efron | McKelvey-Zavoina |
|---------:|-------------:|----------:|-----------------------:|------:|-----------------:|
|    0.083 |        0.075 |     0.109 |                  0.145 | 0.111 |            0.177 |

## Сравнение моделей

### Approve equation (logit)

Для датасет `loanapp` оцените **logit** регрессии `approve` на

- `appinc+I(appinc**2)+mortno+unem+dep+male+married+yjob+self`
- `mortno+unem+dep+male+married+yjob+self`
- `appinc+I(appinc**2)+mortno+unem+dep+married`
- `appinc+I(appinc**2)+mortno+unem+dep`

Для каждой модели вычислите показатели информационных критериев AIC и
BIC и adjusted R<sup>2</sup><sub>pseudo</sub>. **Ответ округлите до 3-х
десятичных знаков**. Какая модель предпочтительней по информационных
критериям и adjusted R<sup>2</sup><sub>pseudo</sub>

Ответ:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 | 1447.46 | 1503.33 |        0.019 |
|        1 | 1450.86 | 1495.55 |        0.017 |
|        2 | 1448.77 | 1487.93 |        0.021 |
|        3 | 1453.24 |  1486.8 |        0.018 |

Предпочтительная модель:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[0\] | \[3\] | \[2\]        |

### labour force equation (probit)

Для датасет `TableF5-1` оцените **probit** регрессии `LFP` на

- `WA+I(WA**2)+WE+KL6+K618+CIT+UN+np.log(FAMINC)`
- `WE+KL6+K618+CIT+UN+np.log(FAMINC)`
- `WA+I(WA**2)+WE+KL6+np.log(FAMINC)`
- `WA+I(WA**2)+WE+KL6`

Для каждой модели вычислите показатели информационных критериев AIC и
BIC и adjusted R<sup>2</sup><sub>pseudo</sub>. **Ответ округлите до 3-х
десятичных знаков**. Какая модель предпочтительней по информационных
критериям и adjusted R<sup>2</sup><sub>pseudo</sub>

Ответ:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 |  942.68 | 984.297 |        0.085 |
|        1 | 965.398 | 997.767 |        0.062 |
|        2 | 941.392 | 969.137 |        0.086 |
|        3 | 941.981 | 965.102 |        0.085 |

Предпочтительная модель:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[2\] | \[3\] | \[2\]        |

### swiss labour force equation (logit)

Для датасет `SwissLabour` оцените **logit** регрессии `participation` на

- `income+I(income**2)+age+I(age**2)+youngkids+oldkids+education`
- `income+age+youngkids+oldkids+education`
- `np.log(income)+age+I(age**2)+youngkids+oldkids+education`
- `np.log(income)+age+youngkids+oldkids+education`

Для каждой модели вычислите показатели информационных критериев AIC и
BIC и adjusted R<sup>2</sup><sub>pseudo</sub>. **Ответ округлите до 3-х
десятичных знаков**. Какая модель предпочтительней по информационных
критериям и adjusted R<sup>2</sup><sub>pseudo</sub>

Ответ:

| Model \# |     AIC |     BIC | Adj McFadden |
|---------:|--------:|--------:|-------------:|
|        0 |  1067.3 | 1105.47 |        0.113 |
|        1 | 1110.91 | 1139.54 |        0.077 |
|        2 | 1066.94 | 1100.34 |        0.113 |
|        3 | 1111.57 | 1140.19 |        0.076 |

Предпочтительная модель:

| AIC   | BIC   | Adj McFadden |
|:------|:------|:-------------|
| \[2\] | \[2\] | \[2\]        |

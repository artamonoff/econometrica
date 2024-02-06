# Статистический и регрессионный анализ с Statsmodels

## Введение

Библиотека [`statsmodels`](https://www.statsmodels.org/) является одной из базовых для статистического и эконометрического анализа.
Она включает ([ссылка](https://www.statsmodels.org/stable/user-guide.html))

- Регрессионные и линейные модели (основное):
	- линейная регрессия (количественная зависимая переменная)
	- обобщённая линейная модель
	- регрессия с дискретной зависимой переменной (logit/probit и др)
	- робастная линейная регрессия (квантильная и др)
	- другие модели (ANOVA и др.)
- Анализ временных рядов (основное):
	- ARMA/ARIMA
	- экспоненциальное сглаживание
	- ARDL
	- VAR, VECM, VARMA
	- модели пространства состояний
	- модели с переключателем
	- фильтрация (в том числе, на сезонность)
	- тесты для временных рядов: единичного корня и др
- Статистические инструменты (основные):
	- эмпирическая cdf
	- построение графиков
	- тестирование гипотез
	- вывод и оформление результатов подгонки моделей
	- вспомогательные функции

Импорт библиотеки

- `import statsmodels.api as sm`: регрессии, спецификация через матрицы регрессионного дизайна
- `import statsmodels.formula.api as smf`: регрессии, спецификация через формулу
- `import statsmodels.tsa.api as tsa`: модели временных рядов
- `import statsmodels.graphics.api as smg`: графики для регрессионного анализа

## Работа с моделями из Statsmodels

Алгоритм
* инициализация модели (спецификация)
* подгонка под наблюдения (оценка) с необходимыми параметрами, метод `.fit(...)`
* работа с подогнанной моделью
	- вывод протокола подгонки
	- значимость/интерпретация коэффициентов, R2
	- тестирование гипотез о коэффициентах
	- диагностика
	- другое

## Инициализация/спецификация модели

Два альтернативных способа 
- через формулу
- через матрицы регрессионного дизайна `y, X`

### Спецификация через формулу

Формула записывается как строка по правилу 
- `endog~1+exog1+exog2+...` или `endog~exog1+exog2+...` для регрессии с константой
- `endog~0+exog1+exog2+...` для регрессии без константы

**Важное замечание**
- пропущенные наблюдения будут удалены автоматически
- категориальные регрессоры автоматические преобразуются в пул dummy-переменных и они включаются в модель
- преобразование переменных ('на лету')

|Преобразование|Интерфейс|
|-|-|
|квадрат регрессора|`I(exog**2)`|
|логарифм переменной|`np.log(...)` (используем функцию пакета `numpy`)|
|масштабирование (умножить/разделить на число `c`)|`I(exog*c)`, `I(exog/c)`|
|умножение переменных|`I(exog1*exog2)` или `exog1:exog2`|

### Матрицы регрессионного дизайна

- `y`: вектор наблюдений зависимой переменной
- `X`: матрица (таблица) наблюдений регрессоров

**Важное замечание**: 
- контролируем наличие пропущенных наблюдений
- если в регрессию включена константа, то первым столбцом матрицы `X` должен столбец только из единиц. Добавить такой столбце можно методом `.add_constant()`. Импортировать его можно так `from statsmodels.api import add_constant`
- все преобразования переменных нужно делать вручную
 

## Линейная регрессия в statsmodels (класс `OLS` & `RegressionResults`)

### Инициализация модели
*спецификация через формулу* `smf.ols(formula, data)` или `sm.OLS.form_formula(formula, data)`

*спецификация через матрицы регрессионного дизайна*: `sm.OLS(endog, exog, missing='none')`

Параметр `missing` позволяет контролировать что делать с пропущенными наблюдениями. Возможные значения `none, drop, raise`.

В результате создаётся объект класса [`OLS`](https://www.statsmodels.org/stable/generated/statsmodels.regression.linear_model.OLS.html#statsmodels.regression.linear_model.OLS).

### Подгонка модели

Для объекта `OLS` используем метод `.fit(cov_type='nonrobust')`

В результате создаётся объект класса [`RegressionResults`](https://www.statsmodels.org/stable/generated/statsmodels.regression.linear_model.RegressionResults.html#statsmodels.regression.linear_model.RegressionResults) (результат подгонки модели).

Параметр `cov_type` задаёт тип оценки ковариационной матрицы для коэффициентов

|`cov_type`|Тип оценки|
|-|-|
|`nonrobust`|неробастная OLS|
|`HC0`|робастная White|
|`HC1`|робастная к гетероскедастичости|
|`HC2`|робастная к гетероскедастичости|
|`HC3`|робастная к гетероскедастичости|
|`HAC`|робастная Newey-West|

### Вывод результатов подгонки

Общий протокол подгонки модели регрессии выводится методом [`.summary`](https://www.statsmodels.org/stable/generated/statsmodels.regression.linear_model.RegressionResults.summary.html#statsmodels.regression.linear_model.RegressionResults.summary)`(yname=None, xname=None, title=None, alpha=0.05, slim=False)`

- `slim`: выводить полный или сокращенный протокол подгонки (значения `True/False`)
- `alpha`: уровень значимости (для доверительных интервалов)

Протокол можно сохранить в виде файла использую методы `.as_csv()`, `.as_latex()`, `.as_html()`, `.as_text()`

### Тестирование гипотез

Результаты t-тестя для коэффициентов можно вывести методом `statsmodels.iolib.summary2.summary_params`

Основные методы класса `RegressionResults`

|Метод|Тест|
|-|-|
|`.compare_f_test()`|F-тест на сравнение вложенных моделей|
|`.f_test()`|F-тест на линейные ограничения|
|`.t_test()`|t-тест для коэффициентов (общий)|
|`.wald_test()`|Тест Вальда на линейные ограничения (аналогичен F-тесту)|
|`.conf_int()`|Доверительные интервалы|
|`.predict()`|Прогноз|

### Диагностика модели

Основные тесты для диагностики линейной регрессии собраны в модуле [`.stats.diagnostic`](https://www.statsmodels.org/stable/stats.html)

Базовые тесты:
- на гетероскедастичность [`.het_arch()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.het_arch.html#statsmodels.stats.diagnostic.het_arch), [`.het_breuschpagan()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.het_breuschpagan.html#statsmodels.stats.diagnostic.het_breuschpagan), [`.het_goldfeldquandt()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.het_goldfeldquandt.html#statsmodels.stats.diagnostic.het_goldfeldquandt), [`.het_white()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.het_white.html#statsmodels.stats.diagnostic.het_white)
- на серийную корреляцию [`.acorr_breusch_godfrey()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.acorr_breusch_godfrey.html#statsmodels.stats.diagnostic.acorr_breusch_godfrey). [`.acorr_ljungbox()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.acorr_ljungbox.html#statsmodels.stats.diagnostic.acorr_ljungbox), [`.acorr_lm()`](https://www.statsmodels.org/stable/generated/statsmodels.stats.diagnostic.acorr_lm.html#statsmodels.stats.diagnostic.acorr_lm)

## Разное для (подогнанной) линейной регрессии (объект класса `RegressionResults`)

|Метод/Свойства|Описание|
|-|-|
|`.params`|коэффициенты модели|
|`.nobs`|Число наблюдений|
|`.df_model`|число регрессоров|
|`.df_resid`|nobs-df_model-1|
|`.rsquared`|R2|
|`.rsquared_adj`|скорректированный R2|
|`.aic`|Информационный критерий Akaike|
|`.bic`|Байесовский информационный критерий|
|`.bse`|Стандартные ошибки коэффициентов|
|`.tvalues`|t-статистики для коэффициентов|
|`.pvalues`|P-значения для значимости коэффициентов|
|`.fvalue`|F-статистика на значимость регрессии|
|`.f_pvalue`|P-значение на значимость регрессии|
|`.resid`|остатки|
|`.fittedvalues`|предсказанные значения|
|`.centered_tss`|TSS|
|`.ess`|ESS|
|`.ssr`|RSS|

## Разное для (специфицированной) линейной регрессии (через формулу)

|Метод/Свойства|Описание|
|-|-|
|`.endog_names`|имя эндогенной (зависимой) переменной|
|`.exog_names`|имена экзогенных  (объясняющих) переменных|
|`.endog`|наблюдения эндогенной (зависимой) переменной (массив numpy)|
|`.exog`|наблюдения экзогенных (объясняющих) переменных (массив numpy)|
|`.nobs`|число наблюдений|
|`.df_resid`| n-k-1|
|`.df_model`|k (число регрессоров)|
|`.rank`|k+1 (число параметров модели)|
|`.formula`|формуля для |
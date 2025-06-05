# Основы Pandas

Библиотека [`pandas`](https://pandas.pydata.org) позволяет работать с **датафреймами** (фреймы данных)

[DataFrame](https://pandas.pydata.org/docs/getting_started/intro_tutorials/01_table_oriented.html)  - это таблица (2-мерная структура данных), которая используется для хранения данных различных типов  (включая строки, целые числа, значения с плавающей запятой, категориальные данные и многое другое) по столбцам.

**Важно**: в датафреймах столбца и строки неравнозначны! Строки соответствуют наблюдениям/объектам (ось 0), столбца – переменным (ось 1)

**Важно**: пропущенные значения обычно отображаются как `NaN` или `None`

Функционал Pandas:

- датафреймы (кросс-секции)
- временные ряды (одномерные и многомерные)
- панельные данные
- числовые и категориальные переменные
- импорт табличных данных из файлов различных форматов: CSV, MS Excel и многое другое
- фильтрация данных
- преобразования данных
- манипуляций с данными
- описательные статистики
- базовая графика
- многое другое

**Важное замечание**: *строки и столбцы индексируются с нуля!*

## Подключение библиотеки в Python

`import pandas as pd`

## Основные методы Pandas

|Метод|Описание|
|-|-|
|`.read_csv('Filename.csv', sep=',', decimal='.')`|Импорт данных из файла CSV|
|`.read_excel('Filename.xlsx', sheet_name=0, header=0)`|Импорт данных из файла MS Excel|
|`.DataFrame(data, index=None, columns=None)`|создание нового датафрейма (data – объект numpy, словарь, ...)|
|`.concat(objs, axis=0)`| слияние датафреймов вдоль оси axis|
|`.get_dummies(data, prefix=None, prefix_sep='_', columns=None)`|преобразовать категориальных переменных в дамми|

## Основные свойства и методы pandas.DataFrame

**Замечание** 
- большинство методов возвращает датафрейм
- В скобках указаны значения аргументов по умолчанию

### Основные свойства

|Свойства|Описание|
|-|-|
|`.shape`|размер: число строк/столбцов|
|`.index`|индекс|
|`.size`|число элементов|
|`.dtypes`|тип данных по столбцам/переменным|
|`.T`|транспонирование|
|`.iloc[]`|выбрать строки/столбцы по номерам|
|`.loc[]`|выбрать столбы по названиям|

### Описательные статистики для числовых переменных/наблюдений

|Метод|Описание|
|-|-|
|`.describe(percentiles=None, include=None, exclude=None)`|описательные статистик по переменным|
|`.min(axis=0, skipna=True, numeric_only=False)`| минимум вдоль оси axis|
|`.max(axis=0, skipna=True, numeric_only=False)`| максимум вдоль оси axis|
|`.sum(axis=0, skipna=True, numeric_only=False)`| сумма вдоль оси axis|
|`.mean(axis=0, skipna=True, numeric_only=False)`| среднее вдоль оси axis|
|`.median(axis=0, skipna=True, numeric_only=False)`|медиана вдоль оси axis|
|`.var(axis=0, ddof=1, numeric_only=False)`| выборочная дисперсия|
|`.var(axis=0, ddof=1, numeric_only=False)`| (выборочное) стандартное отклонение|
|`.count(axis=0, numeric_only=False)`| число наблюдения по каждому столбцу|
|`.corr(method='pearson', numeric_only=False)`| корреляционная матрица|

### Описательные статистики для категориальных переменных

|Метод|Описание|
|-|-|
|`.value_counts(subset=None, dropna=True)`| частота различных значений в столбцах `subset`|

### Другие методы

|Метод|Описание|
|-|-|
|`.info()`|Информация по переменным|
|`.head(n=5)`|первые n наблюдений|
|`.tail(n=5)`|последние n наблюдений|
|`.round(decimals=0)`| округление|
|`.isna()`| обнаружение пропущенных значений|
|`.dropna(axis=0)`| удалить строки (axis=0)/столбцы(axis=1) с пропущенными наблюдениями|
|`.drop(index=None, columns=None)`| удалить строки/столбцы (по названиям)|
|`.plot()`|базовая визуализация|
|`.to_csv('Filenale,csv', sep=',', decimal='.')`| экспорт в файл CSV|
|`.to_excel('Filenale.xlsx', sheet_name='Sheet1',header=True, index=True)`| экспорт в файл MS Excel|

## Манипуляция с данными

- Выбрать столбцы по именам: `DataFrame[list_of_cols]` или `DataFrame.loc[list_of_rows, list_of_cols]`
- Выбрать данные по логическому условию: `DataFrame[logical_condition]`
- Добавить новый столбец(ы): `DataFrame[list_of_new_cols] =` или `DataFrame.loc[:, list_of_new_cols]=`
- Арифметические преобразование: автоматические для целого столбца
- Преобразование через функции: функции из библиотеки `numpy` (`numpy.log`, `numpy.abs` etc)

## Базовая визуализация

Используем [`DataFrame.plot(*args)`](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.plot.html#pandas.DataFrame.plot)

Параметры:

- `x`
- `y`
- `kind`: тип графика
  - `line` (по умолчанию)
  - `area` (как предыдущий, то с закрашенной областью)
  - `bar`
  - `barh`
  - `hist`
  - `box`
  - `pie`
  - `scatter`
  - `hexbin`
  - `kde`, `density`
- `title`
- `grid`: `False`, `True` (сетка)
- `subplots`: `False`, `True`, последовательность групп столбцов (как разбивать на подграфики)
- `rot`: угол поворота для подписей к осям (по умолчанию `None`)
- `logx`, `logy`: `False`, `True` (log-масштаб для осей)
- `legend`: легенда для подграфиков

Альтернативно можно использовать отдельные методы `DataFrame.plot` или `DataFrame`
- `.hist(column=None)`
- `.bar(x=None, y=None)`
- `.boxplot(column=None)`
- `.pie(y)`
- `.scatter(x, y, s=None, c=None)` (s - размер, c - цвет, могут зависеть от переменной)

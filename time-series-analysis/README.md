# Анализ временных рядов

Материалы для курса

Программа курса в файле `syllabus`

Задачи для рабора в папке `exercises`

## Источники (базы) данных

* [`FRED`](https://fred.stlouisfed.org)
* [`Yahoo Finance`](https://finance.yahoo.com)

## Необходимые библиотеки Python

|Библиотека|Описание|
|-|-|
|[`pandas`](https://pandas.pydata.org)|Табличные данные|
|[`numpy`](https://numpy.org)|Работа с массивами данных, преобразование данных|
|[`yfinance`](https://github.com/ranaroussi/yfinance)|Загрузка данных с `finance.yahoo.com`|
|[`pandas-datareader`](https://pandas-datareader.readthedocs.io/en/latest/)|Загрузка данных из внешних БД (`FRED`, `finance.yahoo.com` etc)|
|[`statsmodels`](https://www.statsmodels.org)|Регрессионный анализ и базовый анализ временных рядов|
|[`arch`](https://arch.readthedocs.io/en/latest/index.html)|Тесты и модели временных рядов|
|[`pmdarima`](https://alkaline-ml.com/pmdarima/index.html)|ARIMA-модель|
|[`scikit-learn`](https://scikit-learn.org/stable/index.html)|Методы машинного обучения|
|[`sktime`](https://www.sktime.net/en/stable/index.html)|Анализ временных рядов и Машинное обучение|
|[`scipy.stats`](https://docs.scipy.org/doc/scipy/reference/stats.html)|статистические методы (распределения и проч)|
|[`seaborn`](https://seaborn.pydata.org)|Визуализация статистических данных|
|[`matplotlib`](https://matplotlib.org)|Визуализация данных|
|[`plotly`](https://plotly.com/python/)|Визуализация данных|

## Установка библиотек Python

В командной строке (Anaconda PowerShell Prompt в Windows, Terminal в MacOS) выполнить следующие команды (это нужно сделать только один раз!)

- `conda install -c plotly plotly`
- `conda install pandas numpy scipy statsmodels openpyxl`
- `conda install -c conda-forge yfinance matplotlib seaborn arch-py pandas-datareader pmdarima scikit-learn sktime`

Альтернативно в Windows можно использовать `pip install`

# Panel data analysis with Python

## Содержание

| Папка/Файл |Описание|
|-|-|
|`datasets`| Наборы панельных данных в формате CSV|
|`exercises`|Листочки с заданиями (исходные файлы)|
|`jupyter-notebooks`|Разбор примеров|
|`README`|Этот файл|

## Необходимые библиотеки Python

|Библиотека|Описание|
|-|-|
|[`numpy`](https://numpy.org/)| Работа с массивами данных, преобразование данных|
|[`pandas`](https://pandas.pydata.org/)|Работа с табличными данными|
|[`linearmodels`](https://bashtage.github.io/linearmodels/)| Панельные регрессии|
|`geopandas, mapclassify, folium, pysal`|Работа с пространственными данными|

Библиотека `linearmodels` м.б. установлена командой `pip install linearmodels` или `conda install -c conda-forge linearmodels`

Библиотеки пространственного анализа м.б. установлены командой  `pip install geopandas mapclassify folium pysal` или `conda install -c geopandas mapclassify folium pysal`

В Jupyter используем используем

```
%%capture --no-display
!pip install geopandas mapclassify folium pysal
```

## Задачи

|Задачи (ссылка)| Тема| Ссылка на PDF|
|:-:|-|:-:|
|[Листок 01](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list1-fitting.html)|Подгонка моделей|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list1-fitting.pdf)|
|[Листок 02](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list2-t-test.html)|t-тест|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list2-t-test.pdf)|
|[Листок 03](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list3-F-test.html)|F-тест|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list3-F-test.pdf)|
|[Листок 04](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list4-lags-and-diff.html)|Регрессия с лагами и с дифференцированием|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list4-lags-and-diff.pdf)|
|[Листок 05](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list5-dynamic.html)|Динамическая панель|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list5-dynamic.pdf)|
|[Листок 06](https://nbviewer.org/github/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list6-misc.html)|Разное|[PDF](https://github.com/artamonoff/econometrica/blob/main/panel-data-analysis/exercises/list6-misc.pdf)|

## Ссылки

* [GeoDa](https://geodacenter.github.io/)
* [Датасеты](https://geodacenter.github.io/data-and-lab/)
* [2012 and 2016 Presidential Elections](https://geodacenter.github.io/data-and-lab/county_election_2012_2016-variables/)
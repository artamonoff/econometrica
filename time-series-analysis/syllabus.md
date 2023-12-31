# Программа курса Анализ временных рядов

## Особенности работы с временными рядами

- упорядоченность наблюдений
- одномерные/многомерные
- периодические/ непериодические
- преобразования: лаги, дифференцирование, лог-доходность
- лаговый оператор
- дифференцирование высших порядков
- основные задачи: прогнозирование (краткосрочное и долгосрочное), кросс-зависимости/функции отклика, равновесия
- Виды моделей, неинтерпретируемость коэффициентов
- кросс-валидация моделей 

## Временные ряды в Python

- библиотека `pandas`
- импорт данных: библиотеки `yfinane` и `pandas-datareader`
- задание временного индекса
- агрегирование за период
- дифференцирование и лаги в `pandas`
- визуализация: `pandas`, `seaborn`, `plotly`

## Модель ARMA

- стационарные ряды, ACF & PACF
- белый шум
- выборочные ACF & PACF и их значимость
- спецификация ARMA (с константой), записи через лаговый оператор
- условие стационарности ARMA. мат.ожидание ARMA
- условие обратимости
- дифференцирование ARMA
- прогнозирование для ARMA
- подгонка модели заданного порядка, значимость коэффициентов
- выбор порядка, информационные критерии (AIC, BIC, HQIC)
- диагностика: тесты на серийную корреляцию и гетероскедастичность
- модель ARMA с трендом
- уравнение тренда
- дифференцирование ARMA с трендом
- модель ARMAX, ARX

## Модель ARIMA

- интегрированные ряды
- модель ARIMA
- прогнозирование для ARIMA
- тесты единичного корня: ADF, PP, KPSS
- подгонка ARIMA, алгоритм Бокса-Дженкинса
- диагностика: тесты на серийную корреляцию и гетероскедастичность

## Модели с условной гетероскедастичностью

- модель (G)ARCH для ошибки
- модели Mean-GARCH и ARX-GARCH
- подгонка моделей
- диагностика

## Многомерные временные ряды

- задачи многомерного анализа временных рядов: прогнозирование, кросс-зависимости.
- многомерный белый шум
- модель VAR (с константой): скалярная и матричная запись
- модель VAR(p) как VAR(1) в пространстве большей размерности
- условие стационарности VAR, мат.ожидание VAR
- условие стационарности в терминах собственных значений
- прогнозирование для VAR
- подгонка стационарной VAR-модели заданного порядка
- выбор порядка модели, информационные критерии
- диагностика: тест на серийную корреляцию
- причинность по Гренджеру, тест на причинность
- функции отклика IRF.
- VAR с единичным корнем, коинтеграция, VECM-представление
- тесты на коинтеграцию
- оценка VECM-модели, функции отклика
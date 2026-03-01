# Применение нейросетей для прогнозирования временных рядов

На примере фреймворка [`pytorch`](https://pytorch.org) и библиотеки [`keras`](https://keras.io)

## Установка необходимых пакетов

- `pip install keras torch`
- `conda install -c conda-forge keras torch`

## Элементы нейросети:

### Функции активации

Основные функции активации:

- линейная (тождественная)
- сигмоида (логистическое распределение)
- гиперболический тангенс `tanh`
- ReLU (rectified linear unit)

Полный список [`здесь`](https://keras.io/api/layers/activations/)

Функция активации задаётся либо через параметр `activation` у слоя/ячейки, либо как отдельный слой [`Activation`](https://keras.io/api/layers/core_layers/activation/)

### Ячейки и слои

#### Входящий слой

Задаётся размер

- входящих данных
- размер батча (опционально)

Задаётся классом [`Input(shape=None,batch_size=None,dtype=None)`](https://keras.io/api/layers/core_layers/input/)

#### Полносвязный слой

Задаётся классом [`Dense(units,activation=None)`](https://keras.io/api/layers/core_layers/dense/) ([`Linear`](https://docs.pytorch.org/docs/stable/generated/torch.nn.Linear.html#torch.nn.Linear) в PyTorch + слой активации)

$$
\begin{aligned}
	y&=f(b+w_1x_1+\cdots+w_nx_n)=f(Wx+b) & y&\in\mathbb{R}^{units}
\end{aligned}
$$


#### Рекуррентный слой

Описание можно найти [здесь](https://colah.github.io/posts/2015-08-Understanding-LSTMs/)

Основные слои (полный [список](https://keras.io/api/layers/recurrent_layers/) в Keras):

 - [`SimpleRNN(units,activation="tanh",return_sequences=False)`](https://keras.io/api/layers/recurrent_layers/simple_rnn/) в Keras ([`RNN`](https://docs.pytorch.org/docs/stable/generated/torch.nn.RNN.html#torch.nn.RNN) в PyTorch)
 - [`LSTM(units,activation="tanh",return_sequences=False)`](https://keras.io/api/layers/recurrent_layers/lstm/) в Keras ([`LSTM`](https://docs.pytorch.org/docs/stable/generated/torch.nn.LSTM.html#torch.nn.LSTM) в PyTorch)
 - [`GRU(units,activation="tanh",return_sequences=False)`](https://keras.io/api/layers/recurrent_layers/gru/) в Keras ([`GRU`](https://docs.pytorch.org/docs/stable/generated/torch.nn.GRU.html#torch.nn.GRU) в PyTorch)

Параметры

- `units`: размерность вектора скрытых состояний
- `return_sequences = False`: вернуть скрытое состояние в последней ячейке или всю последовательность скрытых состояний.

### Создание нейросети как последовательности слоёв

Создаём модель как объект класса [`keras.Sequential`](https://keras.io/api/models/sequential/), к которому последовательно добавляем слои

Базовые методы

|Метод|Описание|
|-|-|
|`.add(layer)`|Добавление слоя|
|`.compile(optimizer="rmsprop",loss=None,)`|Задание парамеров обучения|
|`.summary()`||
|`.fit(X=None,y=None,batch_size=None,epochs=1,verbose="auto",shuffle=True)`|Обучение модели|
|`.predict(x, batch_size=None, verbose="auto")`|Прогноз в новых данных|
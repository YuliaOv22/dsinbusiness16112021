# Итоговый проект курса "Машинное обучение в бизнесе"

Стек:

+ ML: numpy, pandas, sklearn
+ API: flask
+ Данные: с kaggle - https://www.kaggle.com/nareshbhat/health-care-data-set-on-heart-attack-possibility

Задача: предсказать вероятность сердечного приступа. Бинарная классификация.

Используемые признаки:

- oldpeak (float64)
- slope (int64)
- ca (int64)
- thal (int64)

Преобразования признаков: StandardScaler.

Модель: LogisticRegression.

Для запуска необходимо клонировать репозиторий и создать образ в Docker:

    $ git clone https://github.com/YuliaOv22/dsinbusiness16112021.git -b Course-project
    $ cd dsinbusiness16112021
    $ sudo docker build -t dsinbusiness16112021 .

Запустить контейнер

    $ docker run -d -p 8180:8180 -p 8181:8181 -v <your_local_path_to_pretrained_models>:/api/api/models dsinbusiness16112021

Сделать прогноз через файл HW9_CourseProject_Step_3.ipynb либо по адресу localhost:8181

The English version is listed below

# 🏥 Решение тестового задания для аналитика в медицинской сфере  
_(Solution to the Medical Data Analyst Test Task)_

---

## Описание задания

Задание состояло из четырёх мини-кейсов, направленных на проверку навыков обработки, анализа, визуализации и моделирования данных в Excel с акцентом на медицинскую сферу:

### Задание 1: Объединение таблиц
- Объединить списки медицинских организаций по полю **Код МО**.
- Найти наименование МО по коду и вставить в таблицу данных.

### Задание 2: Классификация по возрастным группам
- Распределить значения возраста по заданным возрастным группам (0–4, 5–9, …, 80+).

### Задание 3: Подсчёт количества записей
- Подсчитать количество записей по каждому **Коду МО** и отобразить статистику.

### Задание 4: ☎Анализ загрузки колл-центра + 📈 Прогнозирование
- Проанализировать нагрузку операторов: количество входящих и принятых вызовов по часам и дням недели.
- Построить **график загруженности**.
- Сделать **прогноз на будущее** на основе текущих данных.

---

##  Использованные навыки и инструменты

###  Формулы Excel:
- ВПР / VLOOKUP — поиск наименований МО по коду.
- ЕСЛИ, И, ИЛИ / IF, AND, OR — категоризация возрастов.
- СЧЁТЕСЛИ, СУММЕСЛИ / COUNTIF, SUMIF — агрегация данных.
- ИНДЕКС, ПОИСКПОЗ / INDEX, MATCH — расширенный поиск.
- ОКРУГЛВНИЗ / FLOOR — округление значений до ближайшего нижнего предела.

###  Анализ и визуализация:
- Объединение и группировка данных с помощью Power Query и Pivot table;
- Создание **графиков загруженности операторов**;
- Построение прогноза по тренду;
- Визуальное представление нагрузки по времени и дням недели.

---

##  Результаты

- Таблицы объединены по ключам, очищены и подготовлены к анализу.
- Возраста распределены по категориям.
- Подсчитаны записи по каждому учреждению.
- Построен график загруженности колл-центра по времени.
- Выполнено прогнозирование количества вызовов по тренду.

---

##  Как использовать

1. Откройте файл Solution_Medic_test_task.xlsx.
2. Изучите листы:
   - **"Задание 1"** — объединение таблиц МО.
   - **"Задание 2"** — классификация возрастов.
   - **"Задание 3"** — подсчёт записей по МО.
   - **"Задание 4"** — таблица вызовов, графики и прогноз загрузки операторов.


# 🏥 Solution to the Medical Data Analyst Test Task

---

##  Task Description

The assignment included four mini-cases aimed at testing skills in Excel data processing, analysis, visualization, and forecasting in the context of healthcare:

### Task 1:  Table Join
- Merge two lists of medical institutions using the **MO Code**.
- Retrieve the full institution name based on the code.

### Task 2: Age Group Classification
- Assign each age value to the appropriate age group (e.g. 0–4, 5–9, …, 80+).

### Task 3:  Record Count by Institution
- Count the number of records for each **MO Code** and display summary statistics.

### Task 4: ☎ Call Center Load Analysis + 📈 Forecasting
- Analyze operator load: number of incoming and accepted calls by hour and weekday.
- Build a **visual chart of call center load**.
- Make a **future forecast** based on existing data trends.

---

##  Tools and Techniques Used

###  Excel Formulas:
- VLOOKUP — to find institution names by code.
- IF, AND, OR — to assign age groups.
- COUNTIF, SUMIF — for data aggregation.
- INDEX, MATCH — for advanced lookup operations.
- FLOOR — rounding values down to the nearest threshold.

###  Data Analysis and Visualization:
- Combining and grouping data using Power Query and Pivot table;
- **Call center load chart** creation;
- Trend-based forecasting using **linear regression** or trend formulas;
- Time-based load breakdown per weekday and hour.

---

##  Outcomes

- Source tables were cleaned, merged, and structured.
- Age values categorized into standard age groups.
- Records counted per institution and aggregated.
- A call center load chart was created based on real hourly data.
- A forecast model was built to predict future call volumes.

---

##  How to Use

1. Open Solution_Medic_test_task.xlsx.
2. Review the following sheets:
   - **Task 1** — merging MO tables.
   - **Task 2** — age classification.
   - **Task 3** — record count per MO.
   - **Task 4** — call data, charts, and forecasts.

The English version is listed below
# Решение тестового задания для страховой компании

## Описание задания

Задание заключалось в построении расчетной модели бюджета на 2022 год для пяти филиалов по двум видам страхования: **Каско** и **Осаго**. Основная цель — рассчитать план продаж на 2022 год, используя следующую логику:

**План продаж в 2022 году = Пролонгация + Новый бизнес**

Где:
- **Пролонгация** — это сумма продаж 2021 года, умноженная на уровень пролонгации для каждого филиала и вида страхования.
- **Новый бизнес** — это сумма нового бизнеса за 2021 год, умноженная на темп роста нового бизнеса и распределённая по месяцам в соответствии с профилем нового бизнеса.

### Данные для расчётов:
1. **Сборы за 2021 год** (лист «Сборы 2021»):
   - Номер договора, вид договора, филиал, период окончания страхования, сумма к пролонгации, тип договора (новый бизнес или пролонгация).
2. **Уровень пролонгации** (лист «Уровень пролонгации»):
   - Уровень пролонгации для каждого филиала и вида страхования (Каско и Осаго).
3. **Темп роста нового бизнеса** (лист «Темп роста Нового бизнеса»):
   - Темп роста нового бизнеса для каждого филиала и вида страхования.
4. **Профиль нового бизнеса** (лист «Профиль для Нового бизнеса»):
   - Распределение суммы нового бизнеса по месяцам в течение года.

## Использованные инструменты и навыки

- **Excel**: Основной инструмент для построения расчетной модели. Использовались:
  - **Формулы**:
    - **СУММЕСЛИ** и **СУММЕСЛИМН** — для расчёта суммы пролонгации и нового бизнеса за 2021 год по филиалам и видам страхования.
    - **ГПР** (или **HLOOKUP**) — для подтягивания уровня пролонгации и темпа роста нового бизнеса из соответствующих листов.
    - **INDEX** и **MATCH** — для поиска и извлечения данных.
    - **Математические операции** (умножение, сложение) — для расчёта итоговых значений пролонгации и нового бизнеса.
    - **Ссылки на ячейки и листы** — для динамического расчёта данных на основе вводных с других листов.
  - **Работа с массивами данных** — обработка большого объёма данных по договорам, филиалам и месяцам.
  - **Финансовое моделирование** — построение модели бюджета с учётом уровня пролонгации, темпа роста нового бизнеса и профиля распределения.
  - **Анализ данных** — анализ и обработка данных за 2021 год для расчёта плана на 2022 год.

## Результаты

Была построена расчетная модель, которая:
- Автоматически рассчитывает сумму пролонгации для каждого филиала и вида страхования на основе уровня пролонгации.
- Определяет сумму нового бизнеса с учётом темпа роста и распределяет её по месяцам в соответствии с профилем нового бизнеса.
- Позволяет анализировать бюджет на 2022 год с разбивкой по филиалам, видам страхования и месяцам.

## Как использовать

1. Откройте файл `Solution_Insurance_test_task_.xlsx`.
2. Перейдите на лист **"Расчетная модель"**, чтобы увидеть итоговые расчёты плана продаж на 2022 год.
3. Данные для расчётов находятся на листах:
   - **"Сборы 2021"** — данные за 2021 год.
   - **"Уровень пролонгации"** — уровень пролонгации для каждого филиала и вида страхования.
   - **"Темп роста Нового бизнеса"** — темп роста нового бизнеса.
   - **"Профиль для Нового бизнеса"** — распределение нового бизнеса по месяцам.

---

### Навыки, которые были применены:
1. **Работа с формулами Excel**:
   - Использование **СУММЕСЛИ**, **СУММЕСЛИМН**, **ГПР**, **HLOOKUP**, **INDEX**, **MATCH** и других функций для анализа и расчётов.
2. **Финансовое моделирование**:
   - Построение модели бюджета с учётом множества параметров (пролонгация, темп роста, профиль распределения).
3. **Анализ данных**:
   - Обработка и анализ больших объёмов данных (договоры, филиалы, виды страхования, месяцы).
4. **Работа с большими таблицами**:
   - Умение структурировать данные и эффективно работать с большими массивами информации.
5. **Автоматизация расчётов**:
   - Создание динамической модели, которая автоматически пересчитывает данные при изменении вводных.
---
# Solution to the Insurance Company Test Task

## Task Description

The task involved building a budget calculation model for the year 2022 for five branches and two types of insurance: **Casco** and **OSAGO**. The main goal was to calculate the sales plan for 2022 using the following logic:

**Sales Plan for 2022 = Renewals + New Business**

Where:
- **Renewals** — the sum of 2021 sales multiplied by the renewal rate for each branch and type of insurance.
- **New Business** — the sum of new business from 2021 multiplied by the new business growth rate and distributed across months according to the new business profile.

### Data Used for Calculations:
1. **2021 Collections** (Sheet "2021 Collections"):
   - Contract number, contract type, branch, insurance end period, amount for renewal, contract type (new business or renewal).
2. **Renewal Rate** (Sheet "Renewal Rate"):
   - Renewal rate for each branch and type of insurance (Casco and OSAGO).
3. **New Business Growth Rate** (Sheet "New Business Growth Rate"):
   - New business growth rate for each branch and type of insurance.
4. **New Business Profile** (Sheet "New Business Profile"):
   - Distribution of new business amounts across months throughout the year.

## Tools and Skills Used

- **Excel**: The primary tool for building the calculation model. The following were used:
  - **Formulas**:
    - **SUMIF** and **SUMIFS** — to calculate the sum of renewals and new business for 2021 by branch and type of insurance.
    - **HLOOKUP** — to pull renewal rates and new business growth rates from the respective sheets.
    - **INDEX** and **MATCH** — for data lookup and retrieval.
    - **Mathematical operations** (multiplication, addition) — to calculate final values for renewals and new business.
    - **Cell and sheet references** — for dynamic calculations based on inputs from other sheets.
  - **Data array processing** — handling large volumes of data across contracts, branches, and months.
  - **Financial modeling** — building a budget model considering renewal rates, new business growth rates, and distribution profiles.
  - **Data analysis** — analyzing and processing 2021 data to calculate the 2022 plan.

## Results

A calculation model was built that:
- Automatically calculates the renewal amount for each branch and type of insurance based on the renewal rate.
- Determines the new business amount considering the growth rate and distributes it across months according to the new business profile.
- Allows for analysis of the 2022 budget with a breakdown by branch, type of insurance, and month.

## How to Use

1. Open the file `Solution_Insurance_test_task_.xlsx`.
2. Go to the **"Calculation Model"** sheet to see the final sales plan calculations for 2022.
3. The data used for calculations is located on the following sheets:
   - **"2021 Collections"** — data for 2021.
   - **"Renewal Rate"** — renewal rates for each branch and type of insurance.
   - **"New Business Growth Rate"** — new business growth rates.
   - **"New Business Profile"** — distribution of new business across months.

---

### Skills Applied:
1. **Excel Formula Expertise**:
   - Using **SUMIF**, **SUMIFS**, **HLOOKUP**, **INDEX**, **MATCH**, and other functions for analysis and calculations.
2. **Financial Modeling**:
   - Building a budget model considering multiple parameters (renewals, growth rates, distribution profiles).
3. **Data Analysis**:
   - Processing and analyzing large volumes of data (contracts, branches, types of insurance, months).
4. **Working with Large Datasets**:
   - Structuring data and efficiently working with large arrays of information.
5. **Automation of Calculations**:
   - Creating a dynamic model that automatically recalculates data when inputs change.

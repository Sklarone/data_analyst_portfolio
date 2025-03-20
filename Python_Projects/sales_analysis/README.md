
[English version is below]
# Анализ продаж - Данные о продаже товаров с рук

## Обзор
Этот проект включает анализ синтетических данных о продажах товаров с рук. Цель заключается в изучении динамики продаж, выявлении трендов, определении выбросов в ценах и анализе зависимости между качеством продукта и его ценой. Обратите внимание, что используемый в проекте датасет сгенерирован и не является реальными данными.

## Примененные навыки

### 1. **Импорт и очистка данных**
   - Данные были импортированы из CSV файла с использованием **pandas**.
   - Данные были очищены от пропусков и дубликатов, а столбец `datetime` был преобразован в корректный формат.

### 2. **Исследовательский анализ данных (EDA)**
   - Сгенерированы описательные статистики для изучения распределения данных.
   - Были выявлены выбросы в столбце `sell_price` с использованием метода **межквартильного диапазона (IQR)** и визуализированы с помощью **ящика с усами** и **гистограмм**.

### 3. **Расчет бизнес-метрик**
   - Были рассчитаны ключевые бизнес-метрики, включая **общее количество заказов**, **общий доход**, **среднюю стоимость заказа (AOV)** и **среднюю маржу**.

### 4. **Анализ динамики продаж**
   - Были проанализированы тренды продаж по месяцам с группировкой данных, результаты визуализированы с помощью **линейных графиков**.

### 5. **Анализ продаж по городам**
   - Были агрегированы данные о продажах по городам, чтобы определить, какие города вносят наибольший вклад в доход. Результаты были визуализированы с помощью **интерактивных столбчатых диаграмм** с использованием **Plotly**.

### 6. **Анализ корреляции**
   - Была проанализирована зависимость между **состоянием** и **ценой продажи** с помощью **корреляционной матрицы**, результаты визуализированы с помощью **тепловой карты**.

### 7. **Визуализация данных**
   - Использовались **matplotlib**, **seaborn** и **Plotly** для создания различных визуализаций, включая ящики с усами, гистограммы, линейные графики и столбчатые диаграммы для анализа и представления данных.

## Заключение
- Анализ показал тренды в продажах со временем, выявил города с более высокими продажами и продемонстрировал влияние состояния продукта на цену. Датасет синтетический, но выводы могут быть полезны для стратегий ценообразования и оценки эффективности продаж.

## Используемые технологии
- **Python**: pandas, numpy, matplotlib, seaborn, plotly

Этот проект демонстрирует полный цикл анализа данных, от очистки данных до визуализации выводов, с применением различных техник для эффективного интерпретирования и представления данных о продажах.

---

# Sales Analysis - Second Hand Sales Data

## Overview
This project involves analyzing a **synthetic** second-hand sales dataset. The goal is to explore sales dynamics, identify trends, detect pricing outliers, and analyze the relationship between product quality and pricing. Please note that the dataset used in this project is generated and does not represent real-world data.

## Skills Applied

### 1. **Data Import and Cleaning**
   - Imported data from a CSV file using **pandas**.
   - Cleaned the dataset by handling missing values and duplicates, and converted the `datetime` column into a proper format.

### 2. **Exploratory Data Analysis (EDA)**
   - Generated descriptive statistics to understand data distribution.
   - Identified outliers in the `sell_price` column using the **Interquartile Range (IQR)** method and visualized the data using **boxplots** and **histograms**.

### 3. **Business Metrics Calculation**
   - Calculated key business metrics, including **total orders**, **total revenue**, **AOV (Average Order Value)**, and **average margin**.

### 4. **Sales Trend Analysis**
   - Analyzed sales trends over time by grouping data by month and visualized the results using **line plots**.

### 5. **Sales Analysis by City**
   - Aggregated sales data by city to identify which cities contribute the most to revenue. Visualized the results with **interactive bar charts** using **Plotly**.

### 6. **Correlation Analysis**
   - Analyzed the relationship between product **condition** and **sell price** using a **correlation matrix** and visualized it using a **heatmap**.

### 7. **Data Visualization**
   - Utilized **matplotlib**, **seaborn**, and **Plotly** to create various visualizations, including boxplots, histograms, line plots, and bar charts, to gain insights and present findings.

## Conclusion
- The analysis revealed trends in sales over time, identified cities with higher sales, and showed the impact of product condition on pricing. The dataset is synthetic, but the insights provide useful guidance for pricing strategies and sales performance evaluation.

## Technologies Used
- **Python**: pandas, numpy, matplotlib, seaborn, plotly

This project demonstrates a full cycle of data analysis, from data cleaning to visualizing insights, using a range of techniques to interpret and present sales data effectively.

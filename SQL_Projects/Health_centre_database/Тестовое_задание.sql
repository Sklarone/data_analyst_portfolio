--Задание 1: Создание таблиц
-- Таблица пациенты [PATIENTS]
CREATE TABLE PATIENTS (
    PATIENTS_ID INTEGER PRIMARY KEY,
    NOM VARCHAR(255),
    PRENOM VARCHAR(255),
    PATRONYME VARCHAR(255),
    POL VARCHAR(1), -- 0-М, 1-Ж
    NE_LE TIMESTAMP,
    GOD_ROGDEN VARCHAR(4)
);

-- Таблица Расписание [PLANNING]
CREATE TABLE PLANNING (
    PLANNING_ID INTEGER PRIMARY KEY,
    PATIENTS_ID INTEGER,
    HEURE TIMESTAMP,
    DUREE INTEGER, -- Длительность приема, минут
    MEDECINS_ID INTEGER,
    PL_CABINETS_ID INTEGER
);

-- Таблица кабинеты [PL_CABINETS]
CREATE TABLE PL_CABINETS (
    PL_CABINETS_ID INTEGER PRIMARY KEY,
    NAME VARCHAR(255)
);

-- Таблица врачи [MEDECINS]
CREATE TABLE MEDECINS (
    MEDECINS_ID INTEGER PRIMARY KEY,
    NOM VARCHAR(255),
    PRENOM VARCHAR(255),
    SPECIALISATION VARCHAR(255)
);
-- Наполнение таблиц данными
-- Заполнение таблицы PATIENTS
INSERT INTO PATIENTS (PATIENTS_ID, NOM, PRENOM, PATRONYME, POL, NE_LE, GOD_ROGDEN) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '0', '1990-05-15 00:00:00', '1990'),
(2, 'Петрова', 'Анна', 'Сергеевна', '1', '1991-01-20 00:00:00', '1991'),
(3, 'Сидоров', 'Петр', 'Алексеевич', '0', '1989-11-01 00:00:00', '1989'),
(4, 'Смирнова', 'Елена', 'Ивановна', '1', '1990-08-25 00:00:00', '1990'),
(5, 'Козлов', 'Дмитрий', 'Викторович', '0', '1990-12-10 00:00:00', '1990'),
(6, 'Иванов', 'Иван', 'Иванович', '0', '1990-05-15 00:00:00', '1990'),
(7, 'Иванов', 'Иван', 'Иванович', '0', '1990-05-15 00:00:00', '1990'),
(8, 'Иванов', 'Сергей', 'Петрович', '0', '1991-01-25 00:00:00', '1991'),
(9, 'Захарова', 'Ольга', 'Николаевна', '1', '1992-03-05 00:00:00', '1992'),
(10, 'Михайлов', 'Андрей', 'Дмитриевич', '0', '1990-02-01 00:00:00', '1990'),
(11, 'Иванова', 'Екатерина', 'Александровна', '1', '1990-07-07 00:00:00', '1990'),
(12, 'Сидорова', 'Мария', 'Ивановна', '1', '1991-01-30 00:00:00', '1991');


-- Заполнение таблицы MEDECINS
INSERT INTO MEDECINS (MEDECINS_ID, NOM, PRENOM, SPECIALISATION) VALUES
(101, 'Кузнецов', 'Алексей Сергеевич', 'Терапевт'),
(102, 'Васильева', 'Ирина Николаевна', 'Хирург'),
(103, 'Морозов', 'Сергей Владимирович', 'Окулист');

-- Заполнение таблицы PL_CABINETS
INSERT INTO PL_CABINETS (PL_CABINETS_ID, NAME) VALUES
(201, 'Кабинет 101'),
(202, 'Кабинет 102'),
(203, 'Кабинет 205');

-- Заполнение таблицы PLANNING
INSERT INTO PLANNING (PLANNING_ID, PATIENTS_ID, HEURE, DUREE, MEDECINS_ID, PL_CABINETS_ID) VALUES
(1001, 1, CURRENT_DATE + INTERVAL '9 hour', 30, 101, 201),
(1002, 2, CURRENT_DATE + INTERVAL '10 hour 30 minute', 45, 102, 202),
(1003, 3, CURRENT_DATE + INTERVAL '11 hour', 20, 101, 201),
(1004, 4, CURRENT_DATE + INTERVAL '14 hour 15 minute', 60, 103, 203),
(1005, 5, CURRENT_DATE - INTERVAL '1 day' + INTERVAL '9 hour', 30, 101, 201), -- вчерашний прием
(1006, 1, CURRENT_DATE - INTERVAL '1 month' + INTERVAL '10 hour', 25, 102, 202), -- месячный прием
(1007, 2, CURRENT_DATE - INTERVAL '1 month' + INTERVAL '11 hour', 40, 101, 201), -- месячный прием
(1008, 10, CURRENT_DATE + INTERVAL '15 hour', 30, 101, 201),
(1009, 11, CURRENT_DATE + INTERVAL '16 hour', 30, 102, 202),
(1010, 12, CURRENT_DATE + INTERVAL '17 hour', 30, 103, 203);


--Задание 2
--1 вариант (Используем знаки сравнения)
SELECT
    NOM,
    PRENOM,
    PATRONYME,
    POL, 
    NE_LE
FROM
    PATIENTS
WHERE
    NE_LE >= '1990-01-01' AND NE_LE <= '1991-02-01'; -- Где дата рождения больше или равна 1 января 1990 И меньше или равна 1 февраля 1991
    
--2 вариант (Используем BETWEEN)
SELECT
    NOM, 
    PRENOM, 
    PATRONYME, 
    POL,
    NE_LE
FROM
    PATIENTS
WHERE
    NE_LE BETWEEN '1990-01-01' AND '1991-02-01'; -- Где дата рождения находится между 1 января 1990 и 1 февраля 1991 (включительно)
    
--Задание 3    
SELECT 
    C.NAME AS Название_кабинета,
    M.NOM AS Фамилия_врача, 
    M.PRENOM AS Имя_Отчество_врача,
    M.SPECIALISATION AS Специализация_врача, 
    P.NOM AS Фамилия_пациента, 
    P.PRENOM AS Имя_пациента, 
    P.PATRONYME AS Отчество_пациента,
    PL.HEURE
FROM
    PLANNING PL
JOIN
    PL_CABINETS C 
    ON PL.PL_CABINETS_ID = C.PL_CABINETS_ID
JOIN
    MEDECINS M 
    ON PL.MEDECINS_ID = M.MEDECINS_ID
JOIN
    PATIENTS P 
    ON PL.PATIENTS_ID = P.PATIENTS_ID 
WHERE
    PL.HEURE::date = CURRENT_DATE
ORDER BY
    Название_кабинета,
    Фамилия_врача, 
    Имя_Отчество_врача, 
    Специализация_врача, 
    Фамилия_пациента, 
    Имя_пациента, 
    Отчество_пациента;
    
--Задание 4
--1 вариант (Подзапрос и функция MAX)
SELECT
    MAX(NE_LE) AS Вторая_максимальная_дата_рождения -- Выбираем максимальную дату рождения
FROM
    PATIENTS -- Из таблицы PATIENTS
WHERE
    NE_LE < (SELECT MAX(NE_LE) FROM PATIENTS); -- Где дата рождения меньше, чем самая максимальная дата рождения (это исключает самую большую дату и позволяет найти следующую)
    
--2 вариант (Оконная функция)
SELECT
    DISTINCT NE_LE AS Вторая_максимальная_дата_рождения -- 1. Выбираем только УНИКАЛЬНЫЕ даты рождения из результата внутреннего запроса и даем им псевдоним. (Хотя DENSE_RANK() уже работает с рангами уникальных значений, DISTINCT здесь не повредит, но может быть избыточен, если уверенность в DENSE_RANK() полная).
FROM (
    SELECT
        NE_LE,
        DENSE_RANK() OVER (ORDER BY NE_LE DESC) AS rn -- Присваиваем ранг каждой дате рождения. `ORDER BY NE_LE DESC` сортирует даты от самой новой к самой старой. `DENSE_RANK()` присваивает одинаковый ранг одинаковым датам. Например, если 2000-01-01 - ранг 1, а 1995-05-05 (даже если их несколько) - ранг 2.
    FROM
        PATIENTS
) AS ranked_dates -- Результат внутреннего запроса рассматриваем как временную таблицу с псевдонимом `ranked_dates`.
WHERE
    rn = 2; --Фильтруем строки, оставляя только те, у которых ранг равен 2.
    
--Задание 5
SELECT
    M.NOM AS Фамилия_врача, 
    M.PRENOM AS Имя_Отчество_врача,
    ROUND(SUM(PL.DUREE) / 60.0,2) AS Общая_длительность_приема_в_часах, -- Суммируем длительность приемов (в минутах), делим на 60.0 для получения часов (используем 60.0 для избежания целочисленного деления)
    COUNT(DISTINCT PL.PATIENTS_ID) AS Количество_уникальных_пациентов -- Считаем количество уникальных ID пациентов для каждого врача
FROM
    PLANNING PL
JOIN
    MEDECINS M 
    ON PL.MEDECINS_ID = M.MEDECINS_ID
WHERE
    EXTRACT(YEAR FROM PL.HEURE) = EXTRACT(YEAR FROM CURRENT_DATE) AND -- Фильтруем по году приема, чтобы он совпадал с текущим годом
    EXTRACT(MONTH FROM PL.HEURE) = EXTRACT(MONTH FROM CURRENT_DATE) -- И по месяцу приема, чтобы он совпадал с текущим месяцем
GROUP BY
    M.NOM, M.PRENOM; -- Группируем результаты по фамилии и имени отчеству врача, чтобы агрегатные функции (SUM, COUNT) применялись для каждого врача отдельно
    
--Задание 6
SELECT
    P.NOM AS Фамилия,
    P.PRENOM AS Имя, 
    P.PATRONYME AS Отчество, 
    P.NE_LE AS Дата_рождения,
    COUNT(*) AS Количество_однофамильцев -- Считаем количество записей в каждой группе
FROM
    PATIENTS P -- Из таблицы PATIENTS
WHERE
    P.NE_LE IS NOT NULL -- Фильтруем, оставляя только записи, где дата рождения не NULL (заполнена)
GROUP BY
    P.NOM, P.PRENOM, P.PATRONYME, P.NE_LE -- Группируем по полному ФИО и дате рождения, чтобы COUNT(*) считал однофамильцев
HAVING
    COUNT(*) > 2 AND COUNT(*) <= 5; -- Фильтруем группы, оставляя только те, где количество однофамильцев больше двух, но не более пяти
    
--Задание7
SELECT * 
FROM (VALUES -- Создаём временный набор данных с помощью конструкции VALUES.
    ('Иванов', 'Иван', 'Иванович', '1990-01-01'), 
    ('Петрова', 'Анна', 'Сергеевна', '1991-02-02'), 
    ('Сидоров', 'Петр', 'Алексеевич', '1989-03-03') 
) AS t1 (Фамилия, Имя, Отчество, Дата_рождения);

--Задание8
-- Запрос на обновление (обновит 4 произвольные строки из 12)
UPDATE PATIENTS 
SET PRENOM = 'Обновлено', PATRONYME = 'Тест' -- Устанавливаем новые значения для колонок PRENOM и PATRONYME
WHERE PATIENTS_ID IN ( -- Условие WHERE: обновляем только те записи, чей PATIENTS_ID находится в списке, полученном из подзапроса
    SELECT PATIENTS_ID
    FROM PATIENTS
    ORDER BY RANDOM() -- Сортируем записи в случайном порядке (чтобы выбрать произвольные 30%)
    LIMIT 4 -- Ограничиваем выборку до 4 записей (это примерно 30% от 12 строк в примере данных)
);

-- Запрос на удаление (удалит 4 произвольные строки)
DELETE FROM PATIENTS -- Удаляем записи из таблицы PATIENTS
WHERE PATIENTS_ID IN ( -- Условие WHERE: удаляем только те записи, чей PATIENTS_ID находится в списке, полученном из подзапроса
    SELECT PATIENTS_ID 
    FROM PATIENTS 
    ORDER BY RANDOM() 
    LIMIT 4 -- Ограничиваем выборку до 4 записей для удаления
);

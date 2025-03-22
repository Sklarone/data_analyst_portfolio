-- Проверим данные на качество, полноту и корректность 
-- 1. Проверка на наличие дубликатов
SELECT datetime,card,summ, COUNT(*)
FROM bonuscheques
GROUP BY datetime,card,summ
HAVING COUNT(*) > 1;
-- 2. Проверка на пропущенные значения (NULL)
SELECT *
FROM bonuscheques
WHERE datetime IS NULL
   OR card IS NULL
   OR summ IS NULL;
-- 3. Поле card (Номер бонусной карты) должно иметь только числовые значения
SELECT COUNT(card)
FROM bonuscheques
WHERE NOT card ~ '^\d+$';
-- 4. Поле summ (Сумма покупки) должно быть положительным
SELECT COUNT(*)
FROM bonuscheques
WHERE summ <= 0;

-- Воспользуемся CTE для первоначального определения когорт
WITH user_cohort AS (
	SELECT
	card, --Уникальный идентификатор пользователя
	datetime, --Дата совершения покупки
	first_value(to_char(datetime,'YYYY-MM')) OVER (PARTITION BY card ORDER BY datetime) AS cohort, -- Воспользуемся оконной функцией для привязки к дате первой покупки каждого покупателя. Кроме того, каждому покупателю присвоена когорта, которая будет являться месяцем и годом, в котором была совершена первая покупка.
	extract(days from datetime - first_value(datetime) OVER (PARTITION BY card ORDER BY datetime)) AS diff, -- Определим разницу в днях каждой покупки конкретного покупателя и его первой покупкой
	summ --Сумма каждой конкретной покупки
	FROM bonuscheques
	WHERE card LIKE '2000%' --В ходе проверки данных были обнаружены строки с некорректными номерами карт лояльности. Ошибки связаны с работой кассы. Было принято решение не использовать такие данные в анализе
	)
-- Основной запрос направлен на определение LTV - Lifetime Value, пожизненной ценности клиента. Заключается в подсчёте среднего значения суммы всех покупок каждым клиентом той или иной когорты за всё время пользования сервисом
SELECT
	cohort, -- Указываем когорту
	COUNT(distinct card) AS cards_count, --Подсчитываем общее количество клиентов в когорте
	max(diff) AS max_diff, --Определяем разницу в днях между первой и последней покупкой в когорте
	sum(CASE WHEN diff=0 THEN summ END) / COUNT(distinct card) AS "0", --Рассчитываем среднее значение суммы покупок клиентами каждой когорты в первый день. (Далее последовательно: за первые 7/14/30/60/90/180/300 дней)
	CASE WHEN max(diff)>0 THEN  sum(CASE WHEN diff<=7 THEN summ END) / COUNT(distinct card) END AS "7", -- Сначала отбираем только те когортные индексы, когда покупки внутри когорты ещё производятся, для более корректного отображения
	CASE WHEN max(diff)>7 THEN  sum(CASE WHEN diff<=14 THEN summ END) / COUNT(distinct card) END AS "14",
	CASE WHEN max(diff)>14 THEN  sum(CASE WHEN diff<=30 THEN summ END) / COUNT(distinct card) END AS "30",
	CASE WHEN max(diff)>30 THEN  sum(CASE WHEN diff<=60 THEN summ END) / COUNT(distinct card) END AS "60",
	CASE WHEN max(diff)>60 THEN  sum(CASE WHEN diff<=90 THEN summ END) / COUNT(distinct card) END AS "90",
	CASE WHEN max(diff)>90 THEN  sum(CASE WHEN diff<=180 THEN summ END) / COUNT(distinct card) END AS "180",
	CASE WHEN max(diff)>180 THEN  sum(CASE WHEN diff<=300 THEN summ END) / COUNT(distinct card) END AS "300"
	FROM user_cohort
	GROUP BY cohort
	ORDER BY cohort
-- Анализ полученных результатов представлен в описании к решению задачи
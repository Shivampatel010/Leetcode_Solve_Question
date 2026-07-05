-- WITH WeatherWithLag AS (
--     SELECT 
--         id,
--         recordDate,
--         temperature,
--         LAG(temperature, 1) OVER (order by id) AS previous_temperature,
--         LAG(recordDate, 1) OVER (order by id) AS previous_date
--     FROM 
--         Weather
-- )
-- -- select * from WeatherWithLag
-- SELECT 
--     id AS ID
-- FROM 
--     WeatherWithLag
-- WHERE 
--        recordDate > previous_date And
--     temperature > previous_temperature;

-- select id as Id 
-- from weather where temperature subdate(recordDate, interval  day) > (Select temperature from Weather where subdate(recordDate, interval 1 day))

-- SELECT w1.id AS Id
-- FROM Weather w1
-- JOIN Weather w2 
--   ON w1.recordDate = SUBDATE(w2.recordDate, INTERVAL -1 DAY)
-- WHERE w1.temperature > w2.temperature;

select a.id from 
weather b join weather a
on DATE_ADD(b.recordDate, INTERVAL 1 DAY) = a.recordDate
where 
b.temperature < a.temperature;
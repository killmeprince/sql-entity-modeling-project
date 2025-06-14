--Задание 1
SELECT  	v.maker,
			m.model
FROM   		transport.motorcycle m
JOIN    	transport.vehicle v ON m.model = v.model
WHERE   	horsepower > 150
			AND price < 20000
			AND m.TYPE ILIKE '%sport%'
ORDER BY 	horsepower DESC;
    
--Задание 2
SELECT v.maker, c.model, c.horsepower, c.engine_capacity, 'Car' AS vehicle_type
FROM transport.car c
JOIN transport.vehicle v ON v.model = c.model
WHERE c.horsepower > 150 AND c.engine_capacity < 3 AND c.price < 35000

UNION ALL

SELECT v.maker, m.model, m.horsepower, m.engine_capacity, 'Motorcycle' AS vehicle_type
FROM transport.motorcycle m
JOIN transport.vehicle v ON v.model = m.model
WHERE m.horsepower > 150 AND m.engine_capacity < 1.5 AND m.price < 20000

UNION ALL

SELECT v.maker, b.model, NULL, NULL, 'Bicycle' AS vehicle_type
FROM transport.bicycle b
JOIN transport.vehicle v ON v.model = b.model
WHERE b.gear_count > 18 AND b.price < 4000

ORDER BY horsepower DESC NULLS LAST;


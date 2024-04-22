SELECT u.id, up.name AS user_name
FROM qa_auto.users u
JOIN qa_auto.user_profiles up ON u.id = up.userId
WHERE up.name LIKE '%am%';   

SELECT MAX(e.totalCost) AS max_expense
FROM qa_auto.expenses e
JOIN qa_auto.cars c ON e.carId = c.id
JOIN qa_auto.car_brands cb ON c.carBrandId = cb.id
WHERE cb.title = 'Audi'; 

SELECT cb.id AS car_id, COUNT(cm.id) AS count_models
FROM qa_auto.car_brands cb
LEFT JOIN qa_auto.cars c ON cb.id = c.carBrandId
LEFT JOIN qa_auto.car_models cm ON c.carModelId = cm.id
WHERE cb.title IN ('Audi', 'BMW')
GROUP BY cb.id; 

SELECT cm.title AS car_model, cb.title AS car_brand, COUNT(u.id) AS user_count
FROM qa_auto.cars c
JOIN qa_auto.car_models cm ON c.carModelId = cm.id
JOIN qa_auto.car_brands cb ON c.carBrandId = cb.id
JOIN qa_auto.users u ON c.userId = u.id
GROUP BY cm.title, cb.title; 

SELECT up.name AS user_name
FROM qa_auto.cars c
JOIN qa_auto.user_profiles up ON c.userId = up.userId
LIMIT 0, 1000;
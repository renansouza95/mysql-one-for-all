SELECT MIN(p.price) AS faturamento_minimo, MAX(p.price) AS faturamento_maximo, ROUND(AVG(p.price), 2) AS faturamento_medio, SUM(p.price) AS faturamento_total
FROM plans AS p
LEFT JOIN users as u
ON p.plan_id = u.plan_id;
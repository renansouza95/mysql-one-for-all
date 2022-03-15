SELECT t.`name` AS nome, COUNT(h.user_id) AS reproducoes
FROM tracks AS t
INNER JOIN history AS h
ON t.track_id = h.track_id
INNER JOIN users AS u
ON h.user_id = u.user_id
WHERE u.plan_id = 1 OR u.plan_id = 3
GROUP BY t.`name`
ORDER BY t.`name`;
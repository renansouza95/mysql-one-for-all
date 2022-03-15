SELECT u.`name` AS usuario, COUNT(h.track_id) AS qtde_musicas_ouvidas, ROUND(SUM(t.duration_seconds) / 60, 2) AS total_minutos
FROM users AS u
INNER JOIN history AS h
ON u.user_id = h.user_id
INNER JOIN tracks AS t
ON h.track_id = t.track_id
GROUP BY u.`name`
ORDER BY u.`name`;
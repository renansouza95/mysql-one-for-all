SELECT t.`name` AS cancao, COUNT(h.track_id) AS reproducoes
FROM history AS h
RIGHT JOIN tracks AS t
ON h.track_id = t.track_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
SELECT art.`name` AS artista, alb.`name` AS album, COUNT(f.user_id) AS seguidores
FROM albums AS alb
LEFT JOIN artists AS art ON alb.artist_id = art.artist_id
RIGHT JOIN `following` AS f ON alb.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
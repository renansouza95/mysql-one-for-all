SELECT art.`name` AS artista, alb.`name` AS album
FROM albums AS alb
RIGHT JOIN artists AS art
ON alb.artist_id = art.artist_id
WHERE art.`name` = 'Walter Phoenix';
SELECT COUNT(t.track_id) AS cancoes, COUNT(DISTINCT art.artist_id) AS artistas, COUNT(DISTINCT alb.album_id) AS albuns
FROM artists AS art
INNER JOIN albums AS alb
ON art.artist_id = alb.artist_id
INNER JOIN tracks AS t
ON alb.album_id = t.album_id;
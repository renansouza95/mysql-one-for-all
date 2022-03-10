SELECT COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM `history` AS h
RIGHT JOIN users AS u
ON h.user_id = u.user_id
WHERE u.`name` = 'Bill';
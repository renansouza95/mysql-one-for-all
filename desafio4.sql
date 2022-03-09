SELECT u.`name` AS usuario, IF(MAX(YEAR(last_played)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM history AS h
RIGHT JOIN users AS u
ON h.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;
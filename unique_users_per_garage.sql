--Visualizando o cunjunto de dados.
SELECT * 
FROM charging_sessions
ORDER BY garage_id;
--
SELECT garage_id, COUNT(DISTINCT user_id) AS num_unique_users
FROM charging_sessions
--filtrando por vagas compartilhadas.
WHERE user_type = 'Shared'
GROUP BY garage_id
ORDER BY num_unique_users DESC
LIMIT 8;

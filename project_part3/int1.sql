PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT categoria, COUNT(*) AS compradores
FROM Categoria JOIN Subscricao ON nome=categoria
GROUP BY categoria
UNION
SELECT nome, 0
FROM Categoria
WHERE nome NOT IN (SELECT categoria FROM Subscricao)
ORDER BY compradores DESC;

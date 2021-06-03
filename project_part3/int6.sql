PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT
  CASE resposta WHEN 0 THEN vendedor ELSE comprador END AS utilizador
FROM Mensagem JOIN Oferta ON Mensagem.oferta = Oferta.id
GROUP BY utilizador
HAVING COUNT(*) > 5
INTERSECT
SELECT
  CASE resposta WHEN 0 THEN comprador ELSE vendedor END AS utilizador
FROM Mensagem JOIN Oferta ON Mensagem.oferta = Oferta.id
GROUP BY utilizador
HAVING COUNT(*) > 5;

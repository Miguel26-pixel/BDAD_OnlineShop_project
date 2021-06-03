PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT utilizador
FROM Vendedor
WHERE NOT EXISTS (
  SELECT *
  FROM Conversa
  WHERE Conversa.oferta IN (
    SELECT id
    FROM Oferta
    WHERE vendedor=utilizador
  )
  EXCEPT
  SELECT DISTINCT comprador, oferta
  FROM (
    SELECT *
    FROM Conversa
    WHERE Conversa.oferta IN (
      SELECT id
      FROM Oferta
      WHERE vendedor=utilizador
    )
  ) NATURAL JOIN Mensagem
  WHERE resposta=1
);

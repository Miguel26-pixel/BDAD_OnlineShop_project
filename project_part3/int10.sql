PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

-- Incluir uma linha (com preço 0) para todos os anos desde que se registou, de modo a todos os anos serem incluídos no GROUP BY
-- Como tal, a contagem do número de compras deve ser decrementada em 1 (COUNT(*) - 1)

SELECT comprador, ano, COUNT(*) - 1 AS numero_de_compras, SUM(preco_total)/100.0 AS gasto_total_euros
FROM (
  WITH RECURSIVE year_range(ano) AS (
    SELECT CAST(strftime('%Y', data_de_registo, 'unixepoch') AS INTEGER)
    FROM Utilizador 
    WHERE nome_de_utilizador='miguel37'
    UNION ALL
    SELECT ano+1 
    FROM year_range LIMIT 1 + strftime('%Y', 'now') - (
      SELECT strftime('%Y', data_de_registo, 'unixepoch') 
      FROM Utilizador 
      WHERE nome_de_utilizador='miguel37'
    )
  )
  SELECT 'miguel37' AS comprador, ano, 0 AS preco_total 
  FROM year_range
  UNION ALL
  SELECT comprador, CAST(strftime('%Y', data_da_compra, 'unixepoch') AS INTEGER) AS ano, preco_total
  FROM Compra
  WHERE comprador = 'miguel37'
)
GROUP BY ano
ORDER BY ano;

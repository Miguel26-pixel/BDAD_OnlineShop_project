PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

DROP VIEW IF EXISTS ComprasDeOfertasSetembro2018;

CREATE VIEW ComprasDeOfertasSetembro2018 AS
SELECT Oferta.id, Oferta.vendedor, COUNT(*) AS n_compras
FROM Compra JOIN Oferta ON Compra.oferta = Oferta.id
WHERE Compra.data_da_compra>=strftime('%s', '2018-09-01 00:00:00', 'utc') AND Compra.data_da_compra<=strftime('%s', '2018-09-30 23:59:59', 'utc')
GROUP BY Oferta.id;

SELECT id, vendedor, n_compras 
FROM ComprasDeOfertasSetembro2018 C1
WHERE NOT EXISTS (
  SELECT * FROM ComprasDeOfertasSetembro2018 C2 WHERE C2.n_compras > C1.n_compras
);

DROP VIEW ComprasDeOfertasSetembro2018;

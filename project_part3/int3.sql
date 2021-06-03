PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT comprador 
FROM Compra JOIN Oferta ON Compra.oferta=Oferta.id JOIN CategoriaOferta ON CategoriaOferta.oferta=Oferta.id
GROUP BY comprador 
HAVING COUNT(DISTINCT categoria) = (SELECT COUNT(nome) FROM Categoria);

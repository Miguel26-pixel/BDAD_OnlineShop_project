PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT Oferta.id AS idOferta, titulo, produto, 
  vendedor, classificacao_media, telefone, descricao,
  preco_unitario, stock, morada, negociavel, usado, 
  strftime('%Y-%m-%d', data_de_publicacao, 'unixepoch') AS data_de_publicacao
FROM Subscricao NATURAL JOIN CategoriaOferta JOIN Oferta ON CategoriaOferta.oferta=Oferta.id JOIN Vendedor ON Oferta.vendedor=Vendedor.utilizador
WHERE comprador='pedro1987' AND Oferta.stock > 0 AND 
    (Subscricao.preco_max IS NULL OR Oferta.preco_unitario <= Subscricao.preco_max) AND 
    (NOT Oferta.usado OR Subscricao.incluir_usados)
ORDER BY Vendedor.classificacao_media DESC, Oferta.data_de_publicacao DESC;

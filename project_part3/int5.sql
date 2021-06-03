PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT 
  strftime('%Y-%m-%d %H:%M:%S', data_de_envio, 'unixepoch') AS data_de_envio, 
  CASE resposta WHEN 1 THEN vendedor ELSE comprador END AS de, 
  CASE resposta WHEN 1 THEN comprador ELSE vendedor END AS para,
  (SELECT COUNT(*) FROM Imagem WHERE Imagem.mensagem=Mensagem.id) AS numero_de_imagens,
  conteudo 
FROM Mensagem JOIN Oferta ON Mensagem.oferta=Oferta.id
WHERE comprador='joana_silva' AND oferta=6
ORDER BY data_de_envio;

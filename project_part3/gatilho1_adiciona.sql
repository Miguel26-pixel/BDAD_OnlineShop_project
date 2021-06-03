PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL
 
CREATE TRIGGER AtualizaClassificacaoMediaVendedor
AFTER INSERT ON Avaliacao
FOR EACH ROW
BEGIN
UPDATE Vendedor
SET classificacao_media = (
  SELECT AVG(classificacao)
  FROM Oferta JOIN Compra ON Oferta.id=Compra.oferta JOIN Avaliacao ON Compra.id=Avaliacao.compra
  WHERE utilizador=Oferta.vendedor
)
WHERE utilizador IN (
  SELECT vendedor
  FROM Compra JOIN Oferta ON oferta=Oferta.id
  WHERE NEW.compra=Compra.id
);
END;

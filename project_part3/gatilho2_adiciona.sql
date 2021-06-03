PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

CREATE TRIGGER AtualizaStock
AFTER INSERT ON Compra
FOR EACH ROW
BEGIN
UPDATE Oferta SET stock=stock-NEW.quantidade WHERE Oferta.id=NEW.oferta;
END;

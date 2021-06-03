PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT * FROM Oferta;
SELECT * FROM Compra;

INSERT INTO Utilizador VALUES ('evapereira', 'eva.pereira@hotmail.com', strftime('%s', '2018-07-12 23:04:04', 'utc'));
INSERT INTO ContaPessoal VALUES ('evapereira', 'Eva Domingues Pereira', strftime('%s', '1998-04-11'));
INSERT INTO Comprador VALUES ('evapereira');

INSERT INTO Utilizador VALUES ('betinhacosta', 'elisabetecosta@sapo.pt', strftime('%s', '2015-09-02 09:24:33', 'utc'));
INSERT INTO ContaPessoal VALUES ('betinhacosta', 'Elisabete Ferreira da Costa', strftime('%s', '1983-10-10'));
INSERT INTO Vendedor (utilizador, telefone) VALUES ('betinhacosta', '935811385');

INSERT INTO Oferta VALUES (50, 'betinhacosta', 'gabardine rosa', strftime('%s', '2019-02-10 10:50:16', 'utc'), 'gabardine rosa (M)', 'Gabardine rosa Zara.', 2700, 5, 'Coimbra, Portugal', 0, 0);

INSERT INTO Categoria VALUES ('vestuário feminino');
INSERT INTO CategoriaOferta VALUES (50, 'vestuário feminino');

SELECT id as idOferta, vendedor, titulo, preco_unitario, stock FROM Oferta;

INSERT INTO Compra VALUES (50, 'evapereira', 50, strftime('%s', '2020-09-10 11:49:10', 'utc'), 2700, 2, 5400);

SELECT id as idCompra, comprador, oferta, quantidade, preco_total FROM Compra;
SELECT id as idOferta, vendedor, titulo, preco_unitario, stock FROM Oferta;

INSERT INTO Compra VALUES (51, 'evapereira', 50, strftime('%s', '2021-01-15 07:49:10', 'utc'), 2700, 1, 2700);

SELECT id as idCompra, comprador, oferta, quantidade, preco_total FROM Compra;
SELECT id as idOferta, vendedor, titulo, preco_unitario, stock FROM Oferta;

PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

INSERT INTO Utilizador VALUES ('domingosduarte', 'domingosduarte@hotmail.com', strftime('%s', '2018-08-12 23:04:04', 'utc'));
INSERT INTO ContaPessoal VALUES ('domingosduarte', 'Domingos Duarte Pereira', strftime('%s', '1997-04-11'));
INSERT INTO Comprador VALUES ('domingosduarte');

INSERT INTO Utilizador VALUES ('duartedaniel', 'duartedaniel@hotmail.com', strftime('%s', '2017-10-05 23:04:04', 'utc'));
INSERT INTO ContaPessoal VALUES ('duartedaniel', 'Duarte Daniel', strftime('%s', '1997-05-11'));
INSERT INTO Comprador VALUES ('duartedaniel');

INSERT INTO Utilizador VALUES ('ruipinto', 'ruipinto@sapo.pt', strftime('%s', '2016-09-02 09:24:33', 'utc'));
INSERT INTO ContaPessoal VALUES ('ruipinto', 'Rui André Pinto', strftime('%s', '1984-10-10'));
INSERT INTO Vendedor (utilizador, telefone) VALUES ('ruipinto', '965811385');

INSERT INTO Utilizador VALUES ('aldarasousa', 'aldarasousa@gmail.pt', strftime('%s', '2018-09-02 09:24:33', 'utc'));
INSERT INTO ContaPessoal VALUES ('aldarasousa', 'Aldara Sousa', strftime('%s', '1990-10-10'));
INSERT INTO Vendedor (utilizador, telefone) VALUES ('aldarasousa', '939911385');

SELECT * FROM Vendedor;

INSERT INTO Oferta VALUES (60, 'ruipinto', 'capa telemóvel', strftime('%s', '2019-02-10 10:50:16', 'utc'), 'capa iphone 6', 'capa iphone 6 azul', 1000, 5, 'Lisboa, Portugal', 0, 0);
INSERT INTO Categoria VALUES ('acessorios');
INSERT INTO CategoriaOferta VALUES (60, 'acessorios');

INSERT INTO Compra VALUES (60, 'domingosduarte', 60, strftime('%s', '2020-09-10 11:49:10', 'utc'), 1000, 1, 1000);
INSERT INTO Compra VALUES (70, 'duartedaniel', 60, strftime('%s', '2021-01-10 11:19:15', 'utc'), 1000, 1, 1000);

INSERT INTO Oferta VALUES (80, 'aldarasousa', 'robe', strftime('%s', '2019-10-10 10:50:16', 'utc'), 'robe branco', 'robe de algodao', 1500, 5, 'Guimarães, Portugal', 0, 0);
INSERT INTO Categoria VALUES ('banho');
INSERT INTO CategoriaOferta VALUES (80, 'banho');

INSERT INTO Compra VALUES (80, 'domingosduarte', 80, strftime('%s', '2020-10-10 16:49:10', 'utc'), 1500, 3, 4500);

INSERT INTO Avaliacao VALUES (60, 5, 'Robusta.');

SELECT * FROM Avaliacao;
SELECT * FROM Vendedor;

INSERT INTO Avaliacao VALUES (70, 2, 'Vinha danificada.');

SELECT * FROM Avaliacao;
SELECT * FROM Vendedor;

INSERT INTO Avaliacao VALUES (80, 4, 'Muito quentinho.');

SELECT * FROM Avaliacao;
SELECT * FROM Vendedor;

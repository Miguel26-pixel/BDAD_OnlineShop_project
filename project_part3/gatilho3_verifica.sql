PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

INSERT INTO Utilizador VALUES ('orlandocunha', 'orlandocunha@hotmail.com', strftime('%s', '2019-07-12 15:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('orlandocunha', 'Orlando Cunha', strftime('%s', '1985-10-12'));
INSERT INTO Comprador VALUES ('orlandocunha');

SELECT * FROM Utilizador;
SELECT * FROM ContaPessoal;

INSERT INTO Utilizador VALUES ('inesmaria', 'inesmaria@gmail.com', strftime('%s', '2019-05-05 15:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('inesmaria', 'Ines Maria', strftime('%s', '2001-05-05'));
INSERT INTO Comprador VALUES ('inesmaria');

SELECT * FROM Utilizador;
SELECT * FROM ContaPessoal;

INSERT INTO Utilizador VALUES ('goncalosilva', 'goncalosilva@gmail.com', strftime('%s', '2018-03-04 15:34:56', 'utc'));
INSERT INTO ContaPessoal VALUES ('goncalosilva', 'Goncalo Silva', strftime('%s', '2000-03-05'));
INSERT INTO Comprador VALUES ('goncalosilva');

SELECT * FROM Utilizador;
SELECT * FROM ContaPessoal;

PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL
 
CREATE TRIGGER RestricaoIdadeMaiorQue18
BEFORE INSERT ON ContaPessoal
FOR EACH ROW
WHEN (
  SELECT strftime('%Y.%m%d', data_de_registo, 'unixepoch')
  FROM Utilizador
  WHERE NEW.utilizador=nome_de_utilizador
) - strftime('%Y.%m%d', NEW.data_de_nascimento, 'unixepoch') < 18
BEGIN
SELECT RAISE(rollback, 'Utilizador nao tem idade suficiente para se registar');
END;

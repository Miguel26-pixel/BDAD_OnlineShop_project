PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT utilizador, tipo_de_conta, ganho_total_euros 
FROM ( 
    SELECT utilizador, 'Conta Empresa' AS tipo_de_conta
    FROM ContaEmpresa
    UNION
    SELECT utilizador, 'Conta Pessoal' AS tipo_de_conta
    FROM ContaPessoal
) NATURAL JOIN (
    SELECT vendedor AS utilizador, SUM(preco_total)/100.0 AS ganho_total_euros
    FROM Compra JOIN Oferta ON oferta=Oferta.id
    GROUP BY vendedor
    UNION 
    SELECT utilizador, 0 FROM Vendedor
    WHERE utilizador NOT IN (SELECT vendedor FROM Oferta WHERE id IN (SELECT oferta FROM Compra)) 
);

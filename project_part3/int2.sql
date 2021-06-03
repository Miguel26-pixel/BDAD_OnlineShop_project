PRAGMA foreign_keys = ON;
.mode columns
.headers ON
.nullvalue NULL

SELECT vendedor, COUNT(*) AS total_reports, 
  SUM(CASE WHEN resolvido = 1 THEN 1 ELSE 0 END) AS resolvidos, 
  SUM(CASE WHEN resolvido = 0 THEN 1 ELSE 0 END) AS nao_resolvidos
FROM Reportar JOIN Oferta ON id = Reportar.oferta 
GROUP BY vendedor
ORDER BY nao_resolvidos DESC, total_reports DESC;

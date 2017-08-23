SELECT nome FROM Funcionarios
SUBTRACT
SELECT f1.nome FROM Funcionarios f1 JOIN Funcionarios f2 ON f1.codf <> f2.codf AND f1.idade < f2.idade

-- Minha ideia

SELECT f.nome FROM Funcionarios f WHERE NOT EXIST (SELECT * FROM Funcionarios f1 WHERE f1.idade > f.idade)

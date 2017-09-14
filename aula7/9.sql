-- Consulta Atividade <9>


INSERT INTO medicos
(codm ,nome, idade, especialidade, cpf, cidade, nroa)
SELECT
f.codf,
f.nome,
f.idade,
f.especialidade,
f.cpf,
f.cidade,
f.nroa
FROM (
	SELECT
		id.codf,
		fu.nome,
		fu.idade,
		me.especialidade,
		fu.cpf,
		fu.cidade,
		me.nroa
	FROM
	funcionarios as fu,
	medicos as me, (
		SELECT max(m.codm)+1 as codf FROM
		medicos m
	) as id WHERE
	fu.codf = 3 and me.codm = 2
) as f
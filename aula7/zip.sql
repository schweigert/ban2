-- BAN2 =D

-- Marlon Henry
-- Jonathan Oliveira

-- Consulta Atividade <1>

SELECT * FROM (
	SELECT * FROM
		consultas as c, medicos as m
	WHERE
		c.codm = m.codm
) as cn WHERE cn.nome = 'Maria';

-- Consulta Atividade <2>

SELECT pa.nome, pa.codp FROM (
	SELECT * FROM pacientes NATURAL JOIN consultas
) as pa
WHERE pa.hora > '14:00:00'

-- Consulta Atividade <3>

SELECT DISTINCT pa.nome, pa.cidade FROM
(
	SELECT * FROM pacientes as p, consultas as c
	WHERE p.codp = c.codp and c.codm = ANY (
		SELECT m.codm FROM medicos m WHERE m.especialidade = 'ortopedia'
	)
) as pa

-- Consulta Atividade <4>

SELECT DISTINCT pa.nome, pa.cpf FROM
(
	SELECT * FROM consultas natural join pacientes
) as pa WHERE
pa.cidade = 'Florianopolis' and not pa.codm = ANY (
	SELECT m.codm FROM medicos m WHERE m.nome = 'Joao'
)

-- Consulta Atividade <5>

UPDATE consultas
SET hora = '19:00:00' WHERE
consultas.codp = ANY (
	SELECT p.codp FROM pacientes p
	WHERE p.nome = 'Ana'
)

-- Consulta Atividade <6>

DELETE FROM pacientes WHERE NOT EXISTS
(
	SELECT * FROM consultas c WHERE c.codp = pacientes.codp
)

-- Consulta Atividade <7>

UPDATE consultas SET data = '2006-11-21'
WHERE consultas.codm = ANY (
	SELECT m.codm FROM medicos m WHERE m.nome = 'Pedro'
)

-- Consulta Atividade <8>


UPDATE ambulatorios
SET
capacidade = 2 * (
	select max(capacidade)
	from ambulatorios
),
andar = (
	select andar
	from ambulatorios
	where nroa = 1 limit 1
)
WHERE
nroa = 4

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

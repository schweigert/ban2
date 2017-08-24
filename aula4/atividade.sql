-- 1)Faça uma consulta SQL para mostrar o nome e a idade dos médicos
-- que tem consulta marcada com a paciente Ana. Resolva esta questão 
-- usando subconsultas com IN.
 
SELECT m.nome,m.idade FROM medicos as m WHERE m.codm in (SELECT c.codm FROM consultas c JOIN pacientes p ON c.codp = p.codp AND p.nome = 'Ana')

-- 2)Faça uma consulta SQL que mostre o nome, CPF e idade dos pacientes que tem
-- consultas marcadas sempre para dias anteriores ao dia 16. Resolva esta questão
-- usando subconsultas com IN.
 
SELECT p.nome, p.cpf, p.idade FROM pacientes p WHERE p.codp NOT IN (SELECT c.codp FROM consultas c WHERE (EXTRACT (DAY FROM c.data)) > 16)

-- 3)Faça uma consulta SQL que mostre o nome e a idade do médico mais jovem. 
-- Resolva usando subconsultas com ANY/ALL e sem usar a função MIN.

SELECT m.nome, m.idade FROM medicos m WHERE m.idade <= ALL (SELECT idade FROM medicos)

-- 4) Faça uma consulta SQL que mostre o nome e a idade dos médicos que tem 
-- consulta marcada com a paciente Ana. Resolva usando subconsultas com ANY/ALL.

SELECT m.nome, m.idade FROM medicos m WHERE m.codm = ANY(
	SELECT codm FROM consultas WHERE codp = ANY(
		SELECT codp FROM pacientes WHERE nome = 'Ana'
	)
) 

-- 5) Faça uma consulta SQL que mostre o nome e a idade dos médicos que tem consulta 
-- marcada com a paciente Ana. Resolva usando subconsultas com EXISTS.

SELECT m.nome, m.idade FROM medicos m WHERE EXISTS(
	SELECT c.codm FROM consultas c WHERE m.codm = c.codm AND c.codp = ANY(
		SELECT p.codp FROM pacientes p WHERE p.codp = c.codp and p.nome = 'Ana'
	)
)

-- 6) Faça uma consulta SQL que mostre o número do ambulatório com a maior capacidade.
-- Resolva usando subconsultas com EXISTS e sem usar a função MAX.
 
SELECT a.nroa FROM ambulatorios a WHERE NOT EXISTS (
	SELECT b.nroa FROM ambulatorios b WHERE b.capacidade > a.capacidade
)

-- 7) Faça uma consulta SQL que mostre o nome e o CPF dos médicos ortopedistas que tem 
-- consulta marcada com TODOS os pacientes de Florianópolis. Resolva usando subconsultas
-- com EXISTS.

SELECT m.nome, m.cpf FROM medicos m WHERE NOT EXISTS
(
	SELECT * FROM pacientes p WHERE NOT EXISTS
	(
		SELECT * FROM consultas c WHERE c.codm = m.codm and c.codp = c.codp and p.cidade = 'Florianopolis' 
	)
)

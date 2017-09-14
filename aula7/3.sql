-- Consulta Atividade <3>

SELECT DISTINCT pa.nome, pa.cidade FROM
(
	SELECT * FROM pacientes as p, consultas as c
	WHERE p.codp = c.codp and c.codm = ANY (
		SELECT m.codm FROM medicos m WHERE m.especialidade = 'ortopedia'
	)
) as pa
-- Consulta Atividade <5>

UPDATE consultas
SET hora = '19:00:00' WHERE
consultas.codp = ANY (
	SELECT p.codp FROM pacientes p
	WHERE p.nome = 'Ana'
)
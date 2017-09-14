-- Consulta Atividade <2>

SELECT pa.nome, pa.codp FROM (
	SELECT * FROM pacientes NATURAL JOIN consultas
) as pa
WHERE pa.hora > '14:00:00'
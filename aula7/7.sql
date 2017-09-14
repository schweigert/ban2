-- Consulta Atividade <7>

UPDATE consultas SET data = '2006-11-21'
WHERE consultas.codm = ANY (
	SELECT m.codm FROM medicos m WHERE m.nome = 'Pedro'
)
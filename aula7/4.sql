-- Consulta Atividade <4>

SELECT DISTINCT pa.nome, pa.cpf FROM 
(
	SELECT * FROM consultas natural join pacientes
) as pa WHERE
pa.cidade = 'Florianopolis' and not pa.codm = ANY (
	SELECT m.codm FROM medicos m WHERE m.nome = 'Joao'
)
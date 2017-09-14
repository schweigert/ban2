-- Consulta Atividade <6>

DELETE FROM pacientes WHERE NOT EXISTS 
(
	SELECT * FROM consultas c WHERE c.codp = pacientes.codp
)
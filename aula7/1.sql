-- Consulta Atividade <1>

SELECT * FROM (
	SELECT * FROM
		consultas as c, medicos as m
	WHERE
		c.codm = m.codm
) as cn WHERE cn.nome = 'Maria';
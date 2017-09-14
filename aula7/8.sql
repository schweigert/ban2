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
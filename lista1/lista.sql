Alunos: Jonathan de Oliveira Cardoso

		Marlon Henry Schweigert

----		

Questão 1:

SQL:

SELECT

 p.*, ee.nome, ti.sede, ca.dtinicio, al.dtnasc

FROM

 patrocinadores as p NATURAL JOIN

 patrocinio as pa JOIN

 entidadesesportivas as ee ON pa.id = ee.id LEFT JOIN 

 campeonatos as ca ON ca.id = ee.id LEFT JOIN

 times as ti ON ti.id = ee.id LEFT JOIN

 atletas as al ON al.id = ee.id

 WHERE

 2017 = (EXTRACT (YEAR FROM pa.dtinicio)) AND

 08 = (EXTRACT (MONTH FROM pa.dtinicio))

----

Questão 2:

SQL:

SELECT ti.sede, ee.nome FROM

times ti NATURAL JOIN

entidadesesportivas ee JOIN

patrocinio p ON ee.id = p.id JOIN

patrocinadores pa ON p.cnpj = pa.cnpj and pa.razaosocial = 'Proger'

WHERE

ee.nome = ANY (



SELECT s1.nome FROM (SELECT

	e.nome, count(*) as vit

FROM

 times t NATURAL JOIN

 entidadesesportivas e 

JOIN campeonatos c ON c.idtimevencedor = t.id

GROUP BY e.nome) as s1 



WHERE



s1.vit >= ALL (SELECT

	count(*) as vit

FROM

 times t NATURAL JOIN

 entidadesesportivas e

JOIN campeonatos c ON c.idtimevencedor = t.id

WHERE

t.sede = 'Arena Joinville'

GROUP BY e.nome)



)

----		

Questão 3:

SQL:

SELECT e.nome,a.dtnasc 

FROM entidadesesportivas e 

NATURAL JOIN atletas a WHERE NOT EXISTS 

	(SELECT * FROM campeonatos c WHERE NOT EXISTS 

		(SELECT * FROM escalacao es WHERE a.id = es.idatleta and c.id = es.idcampeonato)

	)

----		

Questão 4:

SQL:

SELECT SUM(p.valormensal)

FROM patrocinio p 

WHERE 

	p.dtfim IS NULL or p.dtfim > '2017-08-30' and EXISTS (SELECT * FROM patrocinadores pa WHERE pa.razaosocial = 'Proger' and p.cnpj = pa.cnpj)

----		

Questão 5:

SQL:

SELECT e.nome FROM entidadesesportivas e JOIN atletas atl ON e.id = atl.id WHERE

e.id = ANY (

	SELECT t.id FROM (

		SELECT MAX(q.soma), q.id FROM (

			SELECT SUM(pa.valormensal) as soma, pa.id FROM patrocinio pa group by pa.id

						) as q GROUP BY q.id

			)as t

		)

----


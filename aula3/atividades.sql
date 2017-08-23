-- Questão 1

Na universidade em questão existem alguns cursos que foram extintos, mas que ainda encontram-se cadastrados no banco de dados. Entende-se por um curso extinto àquele que não oferece disciplinas. Faça uma consulta SQL que retorne os códigos destes cursos extintos. 
 
SELECT codigoCurso FROM Cursos WHERE codigoCurso NOT IN (SELECT codigoCurso FROM Disciplinas)

-- Pela prof

SELECT codigoCurso FROM Cursos c  WHERE NOT EXISTS(SELECT * FROM Disciplinas d WHERE d.codCurso = c.codCurso)

-- Questão 2

Forneça uma expressão SQL que retorne o nome dos departamentos que fornecem tanto disciplinas para o curso com nome BCC, quanto para o curso com nome EE. A expressão SQL deve utilizar o operador de intersecção como parte da solução.


SELECT nome FROM Departamentos WHERE codigoDep IN
(
	SELECT codigoDep FROM Disciplinas WHERE codigoDep IN (SELECT codigoDep FROM Departamentos WHERE nome = 'BCC')
	INTERSECT
	SELECT codigoDep FROM Disciplinas WHERE codigoDep IN (SELECT codigoDep FROM Departamentos WHERE nome = 'EE')
)



-- Questão 3
Forneça uma expressão SQL que retorne uma listagem com o código das disciplinas de 4 créditos, bem como o código das disciplinas que possuem resultados para o semestre 2016-1.


SELECT codigoDisciplina FROM Disciplinas WHERE creditos = 4
UNION
SELECT codigoDisciplina FROM Resultados WHERE semestre = '2016-1'

-- Questão 4
Forneça uma expressão SQL que retorne o histórico do aluno com nome 'Peter Beck'. No histórico deve constar o nome das disciplinas cursadas, o semestre cursado e as respectivas médias. Se o aluno cursou uma mesma disciplina mais de uma vez, os resultados devem ser mostrados para cada semestre cursado. Ordene esta listagem de resultados de forma decrescente pelo semestre, e crescente pelo nome da disciplina (ordem alfabética).

SELECT dip.nome,res.semestre, res.media FROM Disciplinas dip JOIN Resultados res JOIN Alunos al ON dip.codigoDisciplina = res.codigoDisciplina AND res.codigoAluno = al.codigoAluno WHERE al.nome = 'Peter Beck' 


--Questão 5
Forneça uma expressão SQL que retorne o nome do aluno que obteve a maior média na disciplina com nome 'BAN2001' no semestre 2016-1. Utilize o recurso de ordenação de resultados para produzir a resposta solicitada.[

SELECT nome FROM Alunos NATURAL JOIN Resultados WHERE media IN ( 
	SELECT MAX(media) FROM Resultados NATURAL JOIN Disciplina WHERE semestre = '2016-1' AND nome = 'BAN2001'
)

--QUESTÃO 6
Forneça uma expressão SQL que retorne o nome das disciplinas em conjunto com a média geral de resultados obtidos por alunos que as cursaram no semestre 2016-1.

SELECT nome, AVG(media) FROM Disciplinas NATURAL JOIN Resultados WHERE semestre = '2016-1' GROUP BY nome

--QUESTÃO 7
Forneça uma expressão SQL que retorne o nome de todos os cursos cadastrados, em conjunto com a quantidade total de discplinas oferecidas para cada curso.

SELECT c.nome,COUNT (*) FROM Curso c, Disciplinas d WHERE c.codigoCurso = d.codigoCurso GROUP BY c.nome

--QUESTÃO 8
Faça uma expressão SQL para listar o nome e créditos de todas as disciplinas. Caso a disciplina possua um pré-requisito, apresentar também o nome e créditos da disciplina que se refere o pré-requisito. 

SELECT d1.nome, d1.créditos, d2.nome, d2.créditos FROM Disciplinas d1 LEFT JOIN Disciplinas d2 ON d1.pré-requisito = d2.codigoDisciplina




Alunos(#codigoAluno, nome, &codigoCurso)
Cursos(#codigoCurso, nome)
Departamentos(#codigoDep, nome)
Disciplinas(#codigoDisciplina, nome, créditos, &codigoDep, &codigoCurso, [&pré-requisito])
Resultados(#&codigoAluno, #&codigoDisciplina, #semestre, media)

0:
Alunos(codAluno, nome_aluno, codUniversidade, nome_universidade, codCurso, nome_curso, (codDisciplina, nome_disciplina, semestre_ano, media_aluno))

1: Desaninhar
Alunos(#codAluno, nome_aluno, codUniversidade, nome_universidade, codCurso, nome_curso)
Disciplina(#&codAluno, #codDisciplina, nome_disciplina, semestre_ano, media_aluno)

2: Eliminar dependências funcionais parciais
Alunos(#codAluno, nome_aluno, codUniversidade, nome_universidade, codCurso, nome_curso)
Disciplina(#codDisciplina, nome_disciplina)
Matricula(#&codAluno, #&codDisciplina, semestre_ano, media_aluno)

3: Eliminar dependências funcionais transitivas
Alunos(#codAluno, nome_aluno, #&codUniversidade)
Universidades(#codUniversidade, nome_universidade, codCurso, nome_curso)
Disciplina(#codDisciplina, nome_disciplina)
Matricula(#&codAluno, #&codDisciplina, semestre_ano, media_aluno)


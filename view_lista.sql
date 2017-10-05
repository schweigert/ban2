-- Ambulatorios(#nroa, andar, capacidade)
-- Medicos(#codm, CPF, nome, idade, cidade, especialidade, &nroa)
-- Pacientes(#codp, CPF, nome, idade, cidade, doença)
-- Funcionarios(#codf, CPF, nome, idade, cidade, salário)
-- Consultas(#&codm, #&codp, #data, hora)
--
-- Além do dba, considere que existem 3 usuários no banco:
-- médico,
-- estagiário
-- secretária.
--
-- Forneça expressões SQL para atender às seguintes restrições. Considere
-- I-INSERT,
-- U-UPDATE,
-- D-DELETE
-- S-SELECT:

-- Atividade 1
-- Somente o médico tem acesso completo (I,U,D,S) aos dados de todos os pacientes

grant all on pacientes to medicos;

-- Atividade 2
-- Com relação às consultas médicas, o usuário estagiário pode ver (S) o nome do
-- médico, o nome do paciente e a data da consulta, mas não pode ver a doença do
-- paciente e a hora da consulta

Create view Estagiario_View as
    Select c.data,  m.nome, p.nome From
    Consultas c, Medicos m, Pacientes p Where
    c.codm = m.codm and c.codp = p.codp;

grant select on Estagiario_View to estagiario;

-- Atividade 3
-- O usuário secretária somente pode ter acesso (I,U,D,S) aos médicos que
-- trabalham no ambulatório do andar 4

Create view Secretaria_View as
    Select m.*
    From Medicos m
    Where m.nroa IN (Select a.nroa From Ambulatorios a Where a.andar = 4);

grant all on Secretaria_View to secretaria;

-- Atividade 4
-- Crie um papel chamado QUERY. Este papel poderá consultar (S) as tabelas
-- pacientes e médico. Considere também que 2 usuários (U1 e U2) tenham este
-- papel QUERY.

Create role Query;
Grant Select on Pacientes, Medicos to Query;
Grant Query to U1, U2;

-- Atividade 5
-- Crie um gatilho de forma que na alteração de funcionários, não permita que o
-- salário de um funcionário seja reduzido.

Create Trigger impedirReducaoDeSalario Before Update on Funcionarios For Each Row Execute Procedure verificarSalario();

Create Function verificarSalario() Returns trigger as $$
Begin
    If new.salario < old.salario Then
        Raise Notice "Alteração não autoriza";
    End If;
End;
$$
Language plpgsql;

-- Atividade 6
-- Crie um gatilho de forma que na inclusão de pacientes, não permita que um
-- CPF de médico seja informado como CPF de um paciente.

Create Trigger cpfDuplicado Before Insert on Pacientes For Each Row Execute Procedure verificaCPF();

Create Function verificaCPF() Returns trigger as $$
Declare
    linhas_afetadas integer Default 0;
Begin
    Execute Select * From Medicos Where cpf = new.cpf;
    Get Diagnostics linhas_afetadas = ROW_COUNT;
    If linhas_afetadas > 0 Then
        Raise Notice "Inclusão não autoriza";
    End If;
End;
$$
Language plpgsql;

-- Atividade 7
-- Crie um gatilho de forma que na inclusão de médicos, não permita que ele
-- se torne o responsável por um ambulatório que já possui um médico
-- responsável (chave estrangeira nroa).

Create Trigger responsavelDuplicado Before Insert on Medicos For Each Row Execute Procedure verificaResponsavel();

Create Function verificaResponsavel() Returns trigger as $$
Declare
    linhas_afetadas integer Default 0;
Begin
    Execute Select * From Medicos Where nroa = new.nroa;
    Get Diagnostics linhas_afetadas = ROW_COUNT;
    If linhas_afetadas > 0 Then
        Raise Notice "Inclusão não autoriza";
    End If;
End;
$$
Language plpgsql;


-- Atividade 8
-- Crie um gatilho de forma que na remoção de ambulatórios,
-- se houver pelo menos um ambulatório do mesmo andar que
-- ele, agregar a capacidade do ambulatório a ser removido
-- a um dos ambulatórios do mesmo andar.

Create Trigger atualizaCapacidade After Delete on Ambulatorios For Each Row Execute Procedure atualizaCapacidadeDoAmb();

Create Function atualizaCapacidadeDoAmb() Returns trigger as $$
Begin
    Execute UPDATE Ambulatorios SET capacidade = capacidade + old.capacidade
    WHERE nroa IN (
            SELECT a.nroa FROM Ambulatorios a WHERE a.andar = old.andar and a.nroa <> old.nroa
            ORDER BY a.capacidade ASC
            LIMIT 1
    );

End;
$$
Language plpgsql;

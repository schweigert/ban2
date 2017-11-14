CATEGORIAS = {
  ID,
  nome,
  preco
}

CLIENTES = {
  ID,
  nome,
  endereco,
  fone,
  cidade,
  responsavel,
  CPF
}

COPIAS = {
  ID,
  filme,
  midia,
  tipo
}

ESTILOS = {
  ID,
  nome
}

FILMES = {
  ID,
  titulo,
  duracao,
  ano,
  categoria,
  estilo
}

FUNCIONARIOS = {
  ID,
  nome,
  endereco,
  fone,
  cidade,
  salario,
  turno,
  CPF
}

LOCACOES = {
  ID,
  filme,
  cliente,
  dataR,
  dataPD,
  funcionario,
  dataD
}

RESERVAS = {
  ID,
  filme,
  cliente,
  dataR,
  dataPD,
  funcionario,
  dataRes
}

SELECT * FROM Categorias;
SELECT titulo, duracao FROM Filmes WHERE ano=2015;
SELECT titulo, nome FROM Filmes f JOIN Estilos e ON f.estilo=e.ID;

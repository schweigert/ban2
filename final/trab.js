db.categorias.insertMany([
   { id: 1, nome: 'velhos', preco: 20.50 }
]);

db.clientes.insertMany([
  { id: 1, nome: 'marlon', endereco: 'bom retiro', fone: 32321212, cidade: 'joinville', cpf: '123456789' }
]);

db.copias.insertMany([
  { id: 1, filme: 1, midia: 1, tipo: 1 }
]);

db.estilos.insertMany([
  { id: 1, nome: 'acao' }
]);

db.filmes.insertMany([
  { id: 1, titulo: 'matrix', duracao: 120, ano: 2004, categoria: 1, estilo: 1 }
]);

db.funcionarios.insertMany([
  {id: 1, nome: 'alan', endereco: 'canto do rio', fone: 32325643, cidade: 'joinville', salario: 800.00, turno: 'integral', cpf: 434343434 }
]);

db.locacoes.insertMany([
  { id: 1, filme: 1, cliente: 1, dataR: '2017-11-10', dataPD: '2017-11-05', funcionario: 1, dataRes: '2017-11-04' }
]);

db.reservas.insertMany([
  { id: 1, filme: 1, cliente: 1, dataR: '2017-10-05', dataPD: '2017-10-12', funcionario: 1, dataRes: '2017-10-11' }
]);

// SELECT * FROM Categorias;
db.categorias.find({});

// SELECT titulo, duracao FROM Filmes WHERE ano=2015;
db.filmes.find({ano: 2015} , {titulo, duracao});


// SELECT titulo, nome FROM Filmes f JOIN Estilos e ON f.estilo=e.ID;
db.filmes.aggregate([
  {
    $lookup:
      {
        from: "estilos",
        localField: "estilo",
        foreignField: "id",
        as: "filmes e estilos"
      }
  },
  {
    $project:
      {
        titulo: 1,
        nome: 1
      }
  }
]);

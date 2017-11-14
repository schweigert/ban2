db.categorias.insertMany([
   { id: 1, nome: 'terror', preco: 20.50 },
   { id: 2, nome: 'acao', preco: 20.50 },
   { id: 3, nome: 'comedia', preco: 20.50 }
]);

db.clientes.insertMany([
  { id: 1, nome: 'marlon', endereco: 'bom retiro', fone: 32321212, cidade: 'joinville', cpf: '123456789' },
  { id: 2, nome: 'jonathan', endereco: 'jardim sofia', fone: 32323030, cidade: 'joinville', cpf: '987654321' }
]);

db.copias.insertMany([
  { id: 1, filme: 1, midia: 1, tipo: 1 },
  { id: 2, filme: 2, midia: 1, tipo: 3 },
  { id: 3, filme: 1, midia: 2, tipo: 2 }
]);

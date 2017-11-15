// Trabalho final de BAN2
// Marlon Henry Schweigert
// Jonathan de Oliveira Cardoso

db.categorias.insertMany([
    {
      "id": 1,
      "nome": "lançamento",
      "preco": 5
    },
    {
      "id": 2,
      "nome": "normal",
      "preco": 3
    }
]);

db.clientes.insertMany([
  {
    "id": 1,
    "nome": "Rui Hack",
    "endereco": "Rua Benjamin Constant",
    "fone": 434578741,
    "cidade": "Joinville",
    "responsavel": "",
    "cpf": 1111111
  },
  {
    "id": 2,
    "nome": "Fabiane Hack",
    "endereco": "Rua Benjamin Constant",
    "fone": 434578741,
    "cidade": "Joinville",
    "responsavel": 1,
    "cpf": 2222222
  },
  {
    "id": 6,
    "nome": "Isaque Freitas",
    "endereco": "Rua Brasil",
    "fone": 32071468,
    "cidade": "Joinville",
    "responsavel": 5,
    "cpf": 6666666
  },
  {
    "id": 3,
    "nome": "Juanir Vix",
    "endereco": "Rua Dr João Colin",
    "fone": 34333665,
    "cidade": "Joinville",
    "responsavel": "",
    "cpf": 3333333
  },
  {
    "id": 4,
    "nome": "Roberta Vix",
    "endereco": "Rua Dr João Colin",
    "fone": 34333665,
    "cidade": "Joinville",
    "responsavel": 3,
    "cpf": 4444444
  },
  {
    "id": 5,
    "nome": "Diogo Freitas",
    "endereco": "Rua Brasil",
    "fone": 32071468,
    "cidade": "Joinville",
    "responsavel": "",
    "cpf": 5555555
  },
  {
    "id": 7,
    "nome": "Maria Joaquina",
    "endereco": "Rua Xanxerê",
    "fone": 32081414,
    "cidade": "Joinville",
    "responsavel": "",
    "cpf": 7777777
  },
  {
    "id": 8,
    "nome": "Victor Hugo",
    "endereco": "Rua Marechal Deodoro",
    "fone": 33554455,
    "cidade": "Florianópolis",
    "responsavel": "",
    "cpf": 8888888
  }
]);

db.copias.insertMany([
  {
    "id": 1,
    "flme": 1,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 1,
    "midia": "DVD",
    "tipo": "dublado"
  },
  {
    "id": 1,
    "flme": 2,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 2,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 3,
    "flme": 2,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 1,
    "flme": 3,
    "midia": "VHS",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 3,
    "midia": "VHS",
    "tipo": "dublado"
  },
  {
    "id": 1,
    "flme": 4,
    "midia": "DVD",
    "tipo": "dublado"
  },
  {
    "id": 2,
    "flme": 4,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 1,
    "flme": 5,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 5,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 1,
    "flme": 6,
    "midia": "VHS",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 6,
    "midia": "VHS",
    "tipo": "legendado"
  },
  {
    "id": 2,
    "flme": 7,
    "midia": "DVD",
    "tipo": "legendado"
  },
  {
    "id": 3,
    "flme": 7,
    "midia": "DVD",
    "tipo": "dublado"
  },
  {
    "id": 1,
    "flme": 7,
    "midia": "VHS",
    "tipo": "legendado"
  },
  {
    "id": 1,
    "flme": 8,
    "midia": "DVD",
    "tipo": "legendado"
  }
]);

db.estilos.insertMany([
  {
    "id": 1,
    "nome": "ação"
  },
  {
    "id": 2,
    "nome": "drama"
  },
  {
    "id": 3,
    "nome": "comédia"
  },
  {
    "id": 4,
    "nome": "romance"
  },
  {
    "id": 5,
    "nome": "policial"
  },
  {
    "id": 6,
    "nome": "terror"
  },
  {
    "id": 7,
    "nome": "suspense"
  }
]);

db.filmes.insertMany([
  {
    "id": 3,
    "titulo": "Tomates Verdes Fritos",
    "duracao": 180,
    "ano": 1995,
    "categoria": 2,
    "estilo": 2
  },
  {
    "id": 4,
    "titulo": "Ressurg",
    "duracao": 115,
    "ano": 2015,
    "categoria": 1,
    "estilo": 2
  },
  {
    "id": 6,
    "titulo": "Dossie Pelicano",
    "duracao": 125,
    "ano": 1998,
    "categoria": 2,
    "estilo": 7
  },
  {
    "id": 1,
    "titulo": "Um amor para recordar",
    "duracao": 118,
    "ano": 2002,
    "categoria": 2,
    "estilo": 4
  },
  {
    "id": 5,
    "titulo": "Os outros",
    "duracao": 110,
    "ano": 2003,
    "categoria": 2,
    "estilo": 6
  },
  {
    "id": 7,
    "titulo": "O menino da flauta",
    "duracao": 90,
    "ano": 2015,
    "categoria": 1,
    "estilo": 2
  },
  {
    "id": 8,
    "titulo": "Vex",
    "duracao": 118,
    "ano": 2016,
    "categoria": 1,
    "estilo": 2
  },
  {
    "id": 2,
    "titulo": "X-Men 3",
    "duracao": 188,
    "ano": 2001,
    "categoria": 2,
    "estilo": 1
  }
]);

db.funcionarios.insertMany([
  {
    "id": 1,
    "nome": "Rui Hack",
    "endereco": "Rua Benjamim Constant",
    "fone": 434578741,
    "cidade": "Joinville",
    "salario": 350,
    "turno": "N",
    "cpf": 1111111
  },
  {
    "id": 2,
    "nome": "Paola Silva",
    "endereco": "Rua Bajé",
    "fone": 346539874,
    "cidade": "Joinville",
    "salario": 450,
    "turno": "T",
    "cpf": 7777777
  },
  {
    "id": 3,
    "nome": "Isaque Freitas",
    "endereco": "Rua Brasil",
    "fone": 32071468,
    "cidade": "Joinville",
    "salario": 550,
    "turno": "M",
    "cpf": 6666666
  }
]);

db.locacoes.insertMany([
  {
    "id": 1,
    "filme": 1,
    "cliente": 2,
    "datar": "2006-10-01",
    "datapd": "2006-10-03",
    "funcionario": 3,
    "datad": "2006-10-01"
  },
  {
    "id": 1,
    "filme": 2,
    "cliente": 3,
    "datar": "2006-09-30",
    "datapd": "2006-10-02",
    "funcionario": 2,
    "datad": "2006-10-02"
  },
  {
    "id": 2,
    "filme": 4,
    "cliente": 5,
    "datar": "2006-11-30",
    "datapd": "2006-12-02",
    "funcionario": 3,
    "datad": "2006-12-05"
  },
  {
    "id": 1,
    "filme": 7,
    "cliente": 4,
    "datar": "2006-12-01",
    "datapd": "2006-12-03",
    "funcionario": 2,
    "datad": "2006-12-04"
  },
  {
    "id": 2,
    "filme": 7,
    "cliente": 2,
    "datar": "2007-04-01",
    "datapd": "2007-04-03",
    "funcionario": 1,
    "datad": "2007-04-04"
  },
  {
    "id": 1,
    "filme": 6,
    "cliente": 6,
    "datar": "2007-04-01",
    "datapd": "2007-04-03",
    "funcionario": 2,
    "datad": "2007-04-04"
  },
  {
    "id": 1,
    "filme": 7,
    "cliente": 6,
    "datar": "2007-04-01",
    "datapd": "2007-04-03",
    "funcionario": 2,
    "datad": "2007-04-04"
  },
  {
    "id": 1,
    "filme": 2,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 1,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 3,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 4,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 5,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 6,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 2,
    "filme": 7,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 1,
    "filme": 8,
    "cliente": 8,
    "datar": "2007-03-01",
    "datapd": "2007-03-03",
    "funcionario": 3,
    "datad": "2007-03-03"
  },
  {
    "id": 2,
    "filme": 2,
    "cliente": 1,
    "datar": "2006-11-29",
    "datapd": "2006-12-01",
    "funcionario": 1,
    "datad": "2006-11-30"
  },
  {
    "id": 2,
    "filme": 6,
    "cliente": 8,
    "datar": "2007-03-02",
    "datapd": "2007-03-05",
    "funcionario": 3,
    "datad": "2007-03-05"
  },
  {
    "id": 1,
    "filme": 7,
    "cliente": 8,
    "datar": "2007-03-02",
    "datapd": "2007-03-05",
    "funcionario": 3,
    "datad": "2007-03-05"
  }
]);

db.reservas.insertMany([
  {
    "id": 1,
    "filme": 1,
    "cliente": 1,
    "datar": "2006-10-01",
    "datapd": "2006-10-03",
    "funcionario": 1,
    "datad": "2006-10-01"
  },
  {
    "id": 1,
    "filme": 3,
    "cliente": 2,
    "datar": "2006-11-01",
    "datapd": "2006-11-03",
    "funcionario": 2,
    "datad": "2006-10-30"
  },
  {
    "id": 1,
    "filme": 5,
    "cliente": 6,
    "datar": "2006-10-01",
    "datapd": "2006-10-03",
    "funcionario": 3,
    "datad": "2006-10-01"
  },
  {
    "id": 2,
    "filme": 2,
    "cliente": 2,
    "datar": "2007-03-01",
    "datapd": "2006-12-02",
    "funcionario": 3,
    "datad": "2006-11-30"
  },
  {
    "id": 1,
    "filme": 2,
    "cliente": 7,
    "datar": "2007-03-01",
    "datapd": "2006-11-02",
    "funcionario": 1,
    "datad": "2007-03-03"
  }
]);

// SELECT * FROM Categorias;
db.categorias.find({});

// SELECT titulo, duracao FROM Filmes WHERE ano=2015;
db.filmes.find({ano: 2015} , {"titulo": 1, "duracao": 1});


// SELECT titulo, nome FROM Filmes f JOIN Estilos e ON f.estilo=e.ID;
db.filmes.aggregate([
  {
    $lookup:
      {
        from: "estilos",
        localField: "estilo",
        foreignField: "id",
        as: "estilo"
      }
  },
  {
    $project:
      {
        titulo: 1,
        estilo: {
          nome: 1
        }
      }
  }
]);

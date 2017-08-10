Clientes(#idCli, nome, telefone, (idDvd, nome, genero, duracao, categoria, preco, data))

1: Remover Internos
Clientes(#idCli, nome, telefone)
Aluguel(#&idCli, idDvd, nome, genero, duracao, categoria, preco, data)

2: Remover funcionais
Clientes(#idCli, nome, telefone)
Aluguel(#&idCli, &idDvd, data)
DVD(#idDvd, nome, genero, duracao, categoria, preco)

3: Remover transitiva
Clientes(#idCli, nome, telefone)
Aluguel(#&idCli, &idDvd, data)
DVD(#idDvd, nome, genero, duracao, &idCat)
Categoria(#idCat, categoria ,preco)

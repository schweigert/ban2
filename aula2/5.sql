NN:

Roteiros(
	Roteiro(codigo, nome, duracao
		Pacotes(
			Pacote(dataSaida, vagas, preco)
		)
		Trechos(
			Cidade(numeroOrdem, nome, estado, populacao, tempoEstadia)
		)
	)
)

N1:

Roteiro(#codigo, nome, duracao)
Pacotes(#&rot, #&pac)
Pacote(#id, dataSaida, vagas, preco)
Trechos(#&rot, #&cid)
Cidades(#id, numeroOrdem, nome, estado, populacao, tempoEstadia)

N2:

Roteiro(#codigo, nome, duracao)
Pacotes(#&rot, #&pac)
Planos(#id, vagas, preco)
Agenda(#&pac, &plano, dataSaida) 
Trechos(#&rot, #&cid, tempoEstadia)
Cidades(#id, numeroOrdem, nome, estado, populacao)

N3:

Roteiro(#codigo, nome, duracao)
Pacotes(#&rot, #&pac)
Planos(#id, vagas, preco)
Agenda(#&pac, &plano, dataSaida) 
Trechos(#&rot, #&cid, tempoEstadia)
Cidades(#id, numeroOrdem, nome, estado, populacao)


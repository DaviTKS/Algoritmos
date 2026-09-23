algoritmo "clientes_por_cidade"

tipo

	cliente = registro
		nome: caractere
		idade: inteiro
		cidade: caractere
	fimregistro

var

	i: inteiro
	cidadeEscolhida: caractere
	cliente: vetor[1..3] de cliente

inicio

	para i de 1 ate 3 faca
		escreval("Cliente ", i)
		escreva("Nome: ")
		leia(cliente[i].nome)
		escreva("Idade: ")
		leia(cliente[i].idade)
		escreva("Cidade: ")
		leia(cliente[i].cidade)
		escreval("")
	fimpara

	escreva("Digite a cidade para consulta: ")
	leia(cidadeEscolhida)

	escreval("")
	escreval("Clientes que moram em ", cidadeEscolhida, ":")
	para i de 1 ate 3 faca
		se cliente[i].cidade = cidadeEscolhida entao
			escreval("Nome: ", cliente[i].nome)
			escreval("Idade: ", cliente[i].idade)
			escreval("Cidade: ", cliente[i].cidade)
			escreval("")
		fimse
	fimpara

fimalgoritmo

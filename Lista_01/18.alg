algoritmo media_idades

var
    nome: caractere
    nomeVelho: caractere
    nomeNovo: caractere
    idade:inteiro
    i: inteiro
    soma: inteiro
    maiorIdade: inteiro
    menorIdade: inteiro
    media: real

inicio
    soma <- 0
    maiorIdade <- 0
    menorIdade <- 999

    para i de 1 ate 5 faca
        escreva("Digite o nome da ", i, "ª pessoa: ")
        leia(nome)

        escreva("Digite a idade da ", i, "ª pessoa: ")
        leia(idade)

        soma <- soma + idade

        se idade > maiorIdade entao
            maiorIdade <- idade
            nomeVelho <- nome
        fimse

        se idade < menorIdade entao
            menorIdade <- idade
            nomeNovo <- nome
        fimse
    fimpara

    media <- soma / 5

    escreval()
    escreval("Média das idades: ", media)
    escreval("Pessoa mais velha: ", nomeVelho, " - ", maiorIdade, " anos")
    escreval("Pessoa mais nova: ", nomeNovo, " - ", menorIdade, " anos")

fimalgoritmo
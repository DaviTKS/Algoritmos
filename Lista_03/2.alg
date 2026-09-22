algoritmo "media_da_turma"

var
    notas: vetor[1..5] de real
    i: inteiro
    nota, soma, media: real

inicio
    soma <- 0

    para i de 1 ate 5 faca
        escreva("Digite a nota do aluno ", i, ": ")
        leia(nota)
        notas[i] <- nota
        soma <- soma + notas[i]
    fimpara

    media <- soma / 5

    escreval("")
    escreval("Media da turma: ", media)

fimalgoritmo

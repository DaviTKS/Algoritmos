algoritmo "notas_bubble_sort"

var

    notas: vetor[1..5] de real
    i, j: inteiro
    auxiliar: real

inicio

    para i de 1 ate 5 faca
        escreva("Digite a nota do aluno ", i, ": ")
        leia(notas[i])
    fimpara

    para i de 1 ate 4 faca
        para j de 1 ate 5 - i faca
            se notas[j] > notas[j + 1] entao
                auxiliar <- notas[j]
                notas[j] <- notas[j + 1]
                notas[j + 1] <- auxiliar
            fimse
        fimpara
    fimpara

    escreval("")
    escreval("Notas em ordem crescente:")
    para i de 1 ate 5 faca
        escreval(notas[i])
    fimpara

fimalgoritmo

algoritmo "diagonal_principal"

var
    matriz: vetor[1..3,1..3] de inteiro
    i, j, max, valor: inteiro


inicio
    max <- 3

    para i de 1 ate max faca
        para j de 1 ate max faca
            escreva("Digite o elemento [",i,", ",j,"]: ")
            leia(valor)
            matriz[i,j] <- valor
        fimpara
    fimpara

    escreval("Elementos da diagonal principal:")
    para i de 1 ate 3 faca
      escreval(matriz[i, i], " ")
    fimpara

fimalgoritmo
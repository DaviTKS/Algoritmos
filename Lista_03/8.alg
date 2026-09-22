algoritmo "matriz_completa"

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


    escreval("MATRIZ COMPLETA")

    para i de 1 ate max faca
        para j de 1 ate max faca
            escreva(matriz[i,j], " ")
        fimpara
        escreval()
    fimpara 
    
    escreval("Elementos da diagonal secundaria:")
    para i de 1 ate max faca
        escreval(matriz[i, max - i + 1])
    fimpara

fimalgoritmo

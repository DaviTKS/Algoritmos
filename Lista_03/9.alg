algoritmo "maior_elemento_da_matriz"

var
    matriz: vetor[1..2, 1..3] de inteiro
    i, j, maior, valor: inteiro

inicio
    para i de 1 ate 2 faca
        para j de 1 ate 3 faca
            escreva("Digite o elemento [", i, ",", j, "]: ")
            leia(valor)
            matriz[i, j] <- valor
        fimpara
    fimpara

    maior <- matriz[1, 1]

    para i de 1 ate 2 faca
        para j de 1 ate 3 faca
            se matriz[i, j] > maior entao
                maior <- matriz[i, j]
            fimse
        fimpara
    fimpara

    escreval("")
    escreval("Maior elemento da matriz: ", maior)

fimalgoritmo

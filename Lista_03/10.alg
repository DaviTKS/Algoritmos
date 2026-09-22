algoritmo "quantidade_de_numeros_pares"

var
    matriz: vetor[1..4, 1..4] de inteiro
    i, j, quantidadePares, valor: inteiro

inicio
    quantidadePares <- 0

    para i de 1 ate 4 faca
        para j de 1 ate 4 faca
            escreva("Digite o elemento [", i, ",", j, "]: ")
            leia(valor)
            matriz[i, j] <- valor

            se matriz[i, j] % 2 = 0 entao
                quantidadePares <- quantidadePares + 1
            fimse
        fimpara
    fimpara

    escreval("")
    escreval("Quantidade de numeros pares: ", quantidadePares)

fimalgoritmo

algoritmo "valores_nas_posicoes_pares"

var
    numeros: vetor[1..15] de inteiro
    i, numero: inteiro

inicio
    para i de 1 ate 15 faca
        escreva("Digite o ", i, " numero: ")
        leia(numero)
        numeros[i] <- numero
    fimpara

    escreval("")
    escreval("Numeros armazenados nas posicoes pares:")

    para i de 2 ate 14 passo 2 faca
        escreval("Posicao ", i, ": ", numeros[i])
    fimpara

fimalgoritmo

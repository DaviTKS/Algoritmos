algoritmo "vetor_ordem_inversa"

var
    numeros: vetor[1..10] de inteiro
    i, numero: inteiro

inicio
    para i de 1 ate 10 faca
        escreva("Digite o ", i, " numero: ")
        leia(numero)
        numeros[i] <- numero
    fimpara

    escreval("")
    escreval("Numeros na ordem inversa:")

    para i de 10 ate 1 passo -1 faca
        escreval(numeros[i])
    fimpara

fimalgoritmo

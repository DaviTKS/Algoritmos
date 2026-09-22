algoritmo "numeros_pares_do_vetor"

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
    escreval("Numeros pares armazenados:")

    para i de 1 ate 10 faca
        se numeros[i] % 2 = 0 entao
            escreval(numeros[i])
        fimse
    fimpara

fimalgoritmo

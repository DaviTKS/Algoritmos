algoritmo "maior_e_menor_do_vetor"

var
    numeros: vetor[1..8] de inteiro
    i, numero, maior, menor: inteiro

inicio
    para i de 1 ate 8 faca
        escreva("Digite o ", i, " numero: ")
        leia(numero)
        numeros[i] <- numero

        se i = 1 entao
            maior <- numeros[i]
            menor <- numeros[i]
        senao
            se numeros[i] > maior entao
                maior <- numeros[i]
            fimse

            se numeros[i] < menor entao
                menor <- numeros[i]
            fimse
        fimse
    fimpara

    escreval("")
    escreval("Maior numero: ", maior)
    escreval("Menor numero: ", menor)

fimalgoritmo

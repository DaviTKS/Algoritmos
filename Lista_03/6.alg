algoritmo "soma_matrizes"

var
    matriz: vetor[1..2, 1..2] de inteiro
    i, j, soma, valor, max: inteiro

inicio 
    soma <- 0
    max <- 2

para i de 1 ate max faca
    para j de 1 ate max faca
        escreva("Digite o elemento [",i,",",j,"]: ")
        leia(valor)
        matriz[i,j] <- valor
        soma <- soma + matriz[i,j]
    fimpara
fimpara

escreval("")
escreval("A soma de todos os elementos da matriz é: ", soma)

fimalgoritmo

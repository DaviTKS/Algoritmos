algoritmo impar

var 
    N1: inteiro
    sobra: inteiro

inicio

    escreva("Digite um número: ")
    leia(N1)


    sobra <- N1 % 2


    se sobra = 1 entao
        escreval("Seu número é impar")
    senao 
        escreval("Seu número é par")
    fimse

fimalgoritmo
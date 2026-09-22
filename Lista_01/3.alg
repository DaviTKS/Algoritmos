algoritmo nota

var 
    N1: inteiro
    N2: inteiro
    media: real

inicio

    escreva("Digite a primeira nota: ")
    leia(N1)
    escreva("Digite a segunda nota: ")
    leia(N2)

    media <- (N1 + N2) / 2

    se media < 7 entao
        escreval("Sua média foi menor que 7, você está reprovado.")
    senao 
        escreval("Sua média foi maior que 7, você está aprovado.")
    fimse

fimalgoritmo
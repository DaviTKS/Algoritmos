algoritmo menor_numero

var 
    N1: inteiro
    N2: inteiro
    N3: inteiro
    N4: inteiro
    N5: inteiro
    menor: inteiro

inicio

    escreva("Digite o primeiro número: ")
    leia(N1)
    escreva("Digite o segundo número: ")
    leia(N2)
    escreva("Digite o terceiro número: ")
    leia(N3)
    escreva("Digite o quarto número: ")
    leia(N4)
    escreva("Digite o quinto número: ")
    leia(N5)

    menor <- N1

    se N2 < menor entao
       menor <- N2
    fimse

    se N3 < menor entao
       menor <- N3
    fimse

    se N4 < menor entao
       menor <- N4
    fimse

    se N5 < menor entao
       menor <- N5
    fimse

    escreva("O menor número é: ", menor)

fimalgoritmo
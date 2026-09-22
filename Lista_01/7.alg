algoritmo maior_numero

var 
    N1: inteiro
    N2: inteiro
    N3: inteiro
    N4: inteiro
    N5: inteiro
    maior: inteiro

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

    maior <- N1

    se N2 > maior entao
       maior <- N2
    fimse

    se N3 > maior entao
       maior <- N3
    fimse

    se N4 > maior entao
       maior <- N4
    fimse

    se N5 > maior entao
       maior <- N5
    fimse

    escreva("O maior número é: ", maior)

fimalgoritmo
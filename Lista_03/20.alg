algoritmo "fibonacci_recursivo"

funcao calcularFibonacci(posicao: inteiro): inteiro
inicio
    se posicao <= 0 entao
        retorne 0
    senao
        se posicao = 1 entao
            retorne 1
        senao
            retorne calcularFibonacci(posicao - 1) + calcularFibonacci(posicao - 2)
        fimse
    fimse
fimfuncao

var

    posicao, resultado: inteiro

inicio

    escreva("Digite a posicao do termo de Fibonacci: ")
    leia(posicao)

    resultado <- calcularFibonacci(posicao)
    escreval("O termo de Fibonacci na posicao ", posicao, " e: ", resultado)

fimalgoritmo

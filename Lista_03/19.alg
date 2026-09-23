algoritmo "fatorial_recursivo"

funcao calcularFatorial(numero: inteiro): inteiro
inicio
    se numero <= 1 entao
        retorne 1
    senao
        retorne numero * calcularFatorial(numero - 1)
    fimse
fimfuncao

var

    numero, resultado: inteiro

inicio

    escreva("Digite um numero inteiro: ")
    leia(numero)

    resultado <- calcularFatorial(numero)
    escreval("O fatorial de ", numero, " e: ", resultado)

fimalgoritmo

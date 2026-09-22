algoritmo pares_e_impares

var
    numero: inteiro
    contador: inteiro
    pares: inteiro
    impares: inteiro
    conta: real

inicio

    para contador de 1 ate 10 faca
        escreva("Digite o ",contador," número: ")
        leia(numero)
        conta <- (numero % 2)
        se conta = 0 entao
            pares <- pares + 1
        senao 
            impares <- impares +1
        fimse
    fimpara

    escreval("")
    escreval("Quantidade de números pares: ",pares)
    escreval("Quantidade de números ímpares: ",impares)

fimalgoritmo
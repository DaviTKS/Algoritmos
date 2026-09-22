algoritmo calculo_imc

var 
    altura: real
    peso: real
    imc: real
    faixa: caractere

inicio

    escreva("Digite sua altura em metros: ")
    leia(altura)
    
    escreva("Digite seu peso em kg: ")
    leia(peso)

    imc <- peso / (altura * altura)

    escreva("Seu IMC é: ", imc)
    escreva("\n")

    se (imc < 18.5) entao
        faixa <- "Abaixo do peso"
    senao se (imc < 25.0) entao
        faixa <- "Peso normal"
    senao se (imc < 30.0) entao
        faixa <- "Sobrepeso"
    senao se (imc < 35.0) entao
        faixa <- "Obesidade grau 1"
    senao se (imc < 40.0) entao
        faixa <- "Obesidade grau 2"
    senao
        faixa <- "Obesidade grau 3"
    fimse
    fimse
    fimse
    fimse
    fimse

    escreva("Faixa: ", faixa)

fimalgoritmo
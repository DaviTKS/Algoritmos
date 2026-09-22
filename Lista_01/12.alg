algoritmo idade_voto

var 
    ano_nascimento: inteiro
    ano_atual: inteiro
    idade: inteiro


inicio

    ano_atual <- 2026
    
    escreva("Digite o ano de nascimento: ")
    leia(ano_nascimento)

    idade <- ano_atual - ano_nascimento

    se (idade >= 16) entao
        escreva("Você tem ", idade, " anos. Você já pode votar!")
    senao
        escreva("Você tem ", idade, " anos. Você ainda não pode votar.")
    fimse

fimalgoritmo
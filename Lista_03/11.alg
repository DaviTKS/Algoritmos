algoritmo "alunos_aprovados"

tipo
    aluno = registro
        nome: caractere
        idade: inteiro
        notaFinal: real
    fimregistro

var
    alunos: vetor[1..5] de aluno
    i: inteiro

inicio
    para i de 1 ate 5 faca
        escreval("Aluno ", i, ":")
        escreva("Nome: ")
        leia(alunos[i].nome)
        escreva("Idade: ")
        leia(alunos[i].idade)
        escreva("Nota final: ")
        leia(alunos[i].notaFinal)
        escreval("")
    fimpara

    escreval("Alunos aprovados:")

    para i de 1 ate 5 faca
        se alunos[i].notaFinal >= 6 entao
            escreval(alunos[i].nome)
        fimse
    fimpara

fimalgoritmo

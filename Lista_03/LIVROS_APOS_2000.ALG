algoritmo "livros_apos_2000"

tipo

    livro = registro
        titulo: caractere
        autor: caractere
        anoPublicacao: inteiro
    fimregistro

var

    i: inteiro
    livro: vetor[1..5] de livro

inicio

    para i de 1 ate 5 faca
        escreval("Livro ", i)
        escreva("Titulo: ")
        leia(livro[i].titulo)
        escreva("Autor: ")
        leia(livro[i].autor)
        escreva("Ano de publicacao: ")
        leia(livro[i].anoPublicacao)
        escreval("")
    fimpara

    escreval("Livros publicados apos o ano 2000:")
    para i de 1 ate 5 faca
        se livro[i].anoPublicacao > 2000 entao
            escreval("Titulo: ", livro[i].titulo)
            escreval("Autor: ", livro[i].autor)
            escreval("Ano de publicacao: ", livro[i].anoPublicacao)
            escreval("")
        fimse
    fimpara

fimalgoritmo

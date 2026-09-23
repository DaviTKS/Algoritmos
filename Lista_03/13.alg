algoritmo "estoque"


tipo

    item = registro
         nome: caractere
         preco: real
         quantidade: real
    fimregistro
    
    
var

   i: inteiro
   item: vetor[1..4] de item
   
   
inicio
   
   para i de 1 ate 4 faca
        escreval("Produto ", i)
        escreval("")
        escreva("Nome: ")
        leia(item[i].nome)
        escreva("Preço: ")
        leia(item[i].preco)
        escreva("Quantidade: ")
        leia(item[i].quantidade)
        escreval("")
   fimpara
   
   escreval("")
   escreval("Totais: ")
   escreval("")
   
   para i de 1 ate 4 faca
        escreval("Valor total do produto ", item[i].nome, ":", item[i].preco * item[i].quantidade)
   fimpara


fimalgoritmo
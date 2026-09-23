algoritmo "Funcionarios"



tipo

    func = registro
         nome: caractere
         cargo: caractere
         salario: real
    fimregistro
    
    
var

   i: inteiro
   func: vetor[1..3] de func
   maior: real
   conta: inteiro
   
   
   
inicio

   maior <- 0
   conta <- 0
   
   para i de 1 ate 3 faca
        escreval("Funcion�rio ", i)
        escreval("")
        escreva("Nome: ")
        leia(func[i].nome)
        escreva("Cargo: ")
        leia(func[i].cargo)
        escreva("Sal�rio: ")
        leia(func[i].salario)
        escreval("")
   fimpara
   
   escreval("")
   escreval("Funcion�rio com maior sal�rio: ")
   
   para i de 1 ate 3 faca
        se maior < func[i].salario entao
           maior <- func[i].salario
           conta <- conta + 1
        fimse
   fimpara

   escreval(func[conta].nome)

         
         
         
fimalgoritmo

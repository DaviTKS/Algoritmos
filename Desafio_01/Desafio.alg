algoritmo "Desafio1"
var
   codigos: vetor [1..10] de inteiro
   nomes, capitaes: vetor [1..10] de caractere
   vitorias, empates, derrotas: vetor [1..10] de inteiro
   marcados, sofridos, saldos, pontos: vetor [1..10] de inteiro
   confrontos: vetor [1..10,1..10] de inteiro
   quantidade, opcao, i, j: inteiro
   MAX_EQUIPES, PONTOS_VITORIA, PONTOS_EMPATE, PONTOS_DERROTA: inteiro



procedimento ExibirEquipe(posicao: inteiro)
inicio
   escreval("Codigo: ", codigos[posicao])
   escreval("Equipe: ", nomes[posicao])
   escreval("Capitao: ", capitaes[posicao])
   escreval("Vitorias: ", vitorias[posicao])
   escreval("Empates: ", empates[posicao])
   escreval("Derrotas: ", derrotas[posicao])
   escreval("Pontos marcados: ", marcados[posicao])
   escreval("Pontos sofridos: ", sofridos[posicao])
   escreval("Saldo: ", saldos[posicao])
   escreval("Pontuacao no campeonato: ", pontos[posicao])
fimprocedimento



procedimento ListarEquipes(total: inteiro)
var
   k: inteiro
inicio
   se total = 0 entao
      escreval("Nenhuma equipe cadastrada.")
   senao
      para k de 1 ate total faca
         escreval(codigos[k], " - ", nomes[k], " | Capitao: ", capitaes[k])
      fimpara
   fimse
fimprocedimento



procedimento Cadastrar(var total: inteiro)
var
   codigoNovo, posicao, k: inteiro
   nomeNovo, capitaoNovo: caractere
inicio
   se total >= MAX_EQUIPES entao
      escreval("Maximo de equipes preenchidas")
   senao
      escreval("Digite o codigo para a equipe de 1 ate 100: ")
      leia(codigoNovo)
      escreval("Digite o nome da equipe: ")
      leia(nomeNovo)
      escreval("Digite o nome do capitão: ")
      leia(capitaoNovo)
   fimse
   
   total <- total + 1
         posicao <- total
         codigos[posicao] <- codigoNovo
         nomes[posicao] <- nomeNovo
         capitaes[posicao] <- capitaoNovo
         vitorias[posicao] <- 0
         empates[posicao] <- 0
         derrotas[posicao] <- 0
         marcados[posicao] <- 0
         sofridos[posicao] <- 0
         saldos[posicao] <- 0
         pontos[posicao] <- 0
         para k de 1 ate MAX_EQUIPES faca
            confrontos[posicao,k] <- 0
            confrontos[k,posicao] <- 0
         fimpara
         escreval("Equipe cadastrada.")
fimprocedimento



inicio
   MAX_EQUIPES <- 10
   PONTOS_VITORIA <- 3
   PONTOS_EMPATE <- 1
   PONTOS_DERROTA <- 0
   quantidade <- 0
   para i de 1 ate MAX_EQUIPES faca
      para j de 1 ate MAX_EQUIPES faca
         confrontos[i,j] <- 0
      fimpara
   fimpara
   repita
      escreval("")
      escreval("ARENA CODE CHAMPIONSHIP")
      escreval("1. Cadastrar equipe")
      escreval("2. Listar equipes")
      escreval("3. Registrar resultado de partida")
      escreval("4. Consultar equipe")
      escreval("5. Exibir classificacao geral")
      escreval("6. Exibir estatisticas do campeonato")
      escreval("7. Consultar confrontos")
      escreval("8. Executar recurso recursivo")
      escreval("9. Encerrar sistema")
      leia(opcao)
      escolha opcao
         caso 1
            escreval("")
            Cadastrar(quantidade)
         caso 2
            escreval("")
            ListarEquipes(quantidade)
         caso 3
            escreval("")
            RegistrarPartida(quantidade)
         caso 4
            escreval("")
            ConsultarEquipe(quantidade)
         caso 5
            escreval("")
            ExibirClassificacao(quantidade)
         caso 6
            escreval("")
            ExibirEstatisticas(quantidade)
         caso 7
            escreval("")
            ConsultarConfrontos(quantidade)
         caso 8
            escreval("Iniciando campeonato em...")
            ContagemRegressiva(5)
         caso 9
            escreval("Sistema encerrado.")
         outrocaso
            escreval("Opcao inexistente.")
      fimescolha
   ate opcao = 9
fimalgoritmo
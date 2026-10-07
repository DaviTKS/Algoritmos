algoritmo "ArenaCode Championship"

var
   codigos: vetor [1..10] de inteiro
   nomes, capitaes: vetor [1..10] de caractere
   vitorias, empates, derrotas: vetor [1..10] de inteiro
   marcados, sofridos, saldos, pontos: vetor [1..10] de inteiro
   confrontos: vetor [1..10,1..10] de inteiro
   quantidade, opcao, i, j: inteiro
   MAX_EQUIPES, PONTOS_VITORIA, PONTOS_EMPATE, PONTOS_DERROTA: inteiro


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           
           
           
           
           
           
           
           
funcao LocalizarEquipe(codigoProcurado, total: inteiro): inteiro
var
   k, posicao: inteiro
inicio
   posicao <- 0
   para k de 1 ate total faca
      se codigos[k] = codigoProcurado entao
         posicao <- k
      fimse
   fimpara
   retorne posicao
fimfuncao

funcao CalcularSaldo(pm, ps: inteiro): inteiro
inicio
   retorne pm - ps
fimfuncao

funcao CalcularPontuacao(qtdVitorias, qtdEmpates, qtdDerrotas: inteiro): inteiro
inicio
   retorne qtdVitorias * PONTOS_VITORIA + qtdEmpates * PONTOS_EMPATE + qtdDerrotas * PONTOS_DERROTA
fimfuncao





//////////////////////////////////////////////////////////////////////////////////







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

procedimento CadastrarEquipe(var total: inteiro)
var
   codigoNovo, posicao, k: inteiro
   nomeNovo, capitaoNovo: caractere
inicio
   se total >= MAX_EQUIPES entao
      escreval("Capacidade maxima atingida.")
   senao
      escreva("Codigo da equipe: ")
      leia(codigoNovo)
      se LocalizarEquipe(codigoNovo, total) <> 0 entao
         escreval("Codigo ja cadastrado. Cadastro cancelado.")
      senao
         escreva("Nome da equipe: ")
         leia(nomeNovo)
         escreva("Nome do capitao: ")
         leia(capitaoNovo)
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
      fimse
   fimse
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

procedimento AtualizarEquipe(posicao, feitos, recebidos: inteiro)
inicio
   marcados[posicao] <- marcados[posicao] + feitos
   sofridos[posicao] <- sofridos[posicao] + recebidos
   se feitos > recebidos entao
      vitorias[posicao] <- vitorias[posicao] + 1
   senao
      se feitos = recebidos entao
         empates[posicao] <- empates[posicao] + 1
      senao
         derrotas[posicao] <- derrotas[posicao] + 1
      fimse
   fimse
   saldos[posicao] <- CalcularSaldo(marcados[posicao], sofridos[posicao])
   pontos[posicao] <- CalcularPontuacao(vitorias[posicao], empates[posicao], derrotas[posicao])
fimprocedimento

procedimento RegistrarPartida(total: inteiro)
var
   codigoA, codigoB, a, b, placarA, placarB: inteiro
inicio
   se total < 2 entao
      escreval("Cadastre pelo menos duas equipes.")
   senao
      escreva("Codigo da primeira equipe: ")
      leia(codigoA)
      escreva("Codigo da segunda equipe: ")
      leia(codigoB)
      a <- LocalizarEquipe(codigoA, total)
      b <- LocalizarEquipe(codigoB, total)
      se (a = 0) ou (b = 0) entao
         escreval("Uma ou ambas as equipes nao existem.")
      senao
         se a = b entao
            escreval("Uma equipe nao pode jogar contra ela propria.")
         senao
            escreva("Pontos da primeira equipe: ")
            leia(placarA)
            escreva("Pontos da segunda equipe: ")
            leia(placarB)
            AtualizarEquipe(a, placarA, placarB)
            AtualizarEquipe(b, placarB, placarA)
            confrontos[a,b] <- confrontos[a,b] + 1
            confrontos[b,a] <- confrontos[b,a] + 1
            escreval("Resultado registrado.")
         fimse
      fimse
   fimse
fimprocedimento

procedimento ConsultarEquipe(total: inteiro)
var
   codigo, posicao: inteiro
inicio
   escreva("Codigo para consulta: ")
   leia(codigo)
   posicao <- LocalizarEquipe(codigo, total)
   se posicao = 0 entao
      escreval("Equipe nao localizada.")
   senao
      ExibirEquipe(posicao)
   fimse
fimprocedimento

// Retorna verdadeiro quando a deve aparecer antes de b.
// Empate em todos os criterios preserva a ordem existente.
funcao VemAntes(a, b: inteiro): logico
var
   resultado: logico
inicio
   se pontos[a] <> pontos[b] entao
      resultado <- pontos[a] > pontos[b]
   senao
      se vitorias[a] <> vitorias[b] entao
         resultado <- vitorias[a] > vitorias[b]
      senao
         se saldos[a] <> saldos[b] entao
            resultado <- saldos[a] > saldos[b]
         senao
            resultado <- marcados[a] > marcados[b]
         fimse
      fimse
   fimse
   retorne resultado
fimfuncao

procedimento TrocarInteiros(var a, b: inteiro)
var
   temporario: inteiro
inicio
   temporario <- a
   a <- b
   b <- temporario
fimprocedimento

procedimento TrocarTextos(var a, b: caractere)
var
   temporario: caractere
inicio
   temporario <- a
   a <- b
   b <- temporario
fimprocedimento

procedimento TrocarEquipes(a, b, total: inteiro)
var
   k: inteiro
inicio
   TrocarInteiros(codigos[a], codigos[b])
   TrocarTextos(nomes[a], nomes[b])
   TrocarTextos(capitaes[a], capitaes[b])
   TrocarInteiros(vitorias[a], vitorias[b])
   TrocarInteiros(empates[a], empates[b])
   TrocarInteiros(derrotas[a], derrotas[b])
   TrocarInteiros(marcados[a], marcados[b])
   TrocarInteiros(sofridos[a], sofridos[b])
   TrocarInteiros(saldos[a], saldos[b])
   TrocarInteiros(pontos[a], pontos[b])
   // Primeiro troca linhas; depois colunas da matriz.
   para k de 1 ate total faca
      TrocarInteiros(confrontos[a,k], confrontos[b,k])
   fimpara
   para k de 1 ate total faca
      TrocarInteiros(confrontos[k,a], confrontos[k,b])
   fimpara
fimprocedimento

procedimento OrdenarClassificacao(total: inteiro)
var
   passada, k: inteiro
inicio
   // Bubble sort com os quatro criterios de desempate.
   se total > 1 entao
      para passada de 1 ate total - 1 faca
         para k de 1 ate total - passada faca
            se VemAntes(k + 1, k) entao
               TrocarEquipes(k, k + 1, total)
            fimse
         fimpara
      fimpara
   fimse
fimprocedimento

procedimento ExibirClassificacao(total: inteiro)
var
   k: inteiro
inicio
   se total = 0 entao
      escreval("Nenhuma equipe cadastrada.")
   senao
      OrdenarClassificacao(total)
      escreval("POS | EQUIPE | P | V | E | D | PM | PS | SG")
      para k de 1 ate total faca
         escreval(k, " | ", nomes[k], " | ", pontos[k], " | ", vitorias[k], " | ", empates[k], " | ", derrotas[k], " | ", marcados[k], " | ", sofridos[k], " | ", saldos[k])
      fimpara
   fimse
fimprocedimento

procedimento ExibirEstatisticas(total: inteiro)
var
   k, l, partidas, totalVitorias, totalEmpates, totalMarcados: inteiro
   maiorV, maiorP, maiorS, maiorM: inteiro
   media: real
inicio
   partidas <- 0
   totalVitorias <- 0
   totalEmpates <- 0
   totalMarcados <- 0
   escreval("Equipes cadastradas: ", total)
   se total = 0 entao
      escreval("Partidas: 0 | Vitorias: 0 | Partidas empatadas: 0")
      escreval("Media de pontos por partida: 0")
      escreval("Nao ha equipes para calcular os destaques.")
   senao
      maiorV <- vitorias[1]
      maiorP <- pontos[1]
      maiorS <- saldos[1]
      maiorM <- marcados[1]
      para k de 1 ate total faca
         totalVitorias <- totalVitorias + vitorias[k]
         totalEmpates <- totalEmpates + empates[k]
         totalMarcados <- totalMarcados + marcados[k]
         se vitorias[k] > maiorV entao
            maiorV <- vitorias[k]
         fimse
         se pontos[k] > maiorP entao
            maiorP <- pontos[k]
         fimse
         se saldos[k] > maiorS entao
            maiorS <- saldos[k]
         fimse
         se marcados[k] > maiorM entao
            maiorM <- marcados[k]
         fimse
         // Soma apenas o triangulo superior: cada partida uma vez.
         se k < total entao
            para l de k + 1 ate total faca
               partidas <- partidas + confrontos[k,l]
            fimpara
         fimse
      fimpara
      media <- 0
      se partidas > 0 entao
         media <- totalMarcados / partidas
      fimse
      escreval("Partidas realizadas: ", partidas)
      escreval("Vitorias (partidas com vencedor): ", totalVitorias)
      // Cada partida empatada gera um empate para cada equipe.
      escreval("Partidas empatadas: ", totalEmpates / 2:1:0)
      escreval("Media dos pontos das duas equipes por partida: ", media:1:2)
      // Mostra todas as equipes empatadas em cada destaque.
      para k de 1 ate total faca
         se vitorias[k] = maiorV entao
            escreval("Mais vitorias: ", nomes[k], " (", maiorV, ")")
         fimse
         se pontos[k] = maiorP entao
            escreval("Maior pontuacao: ", nomes[k], " (", maiorP, ")")
         fimse
         se saldos[k] = maiorS entao
            escreval("Maior saldo: ", nomes[k], " (", maiorS, ")")
         fimse
         se marcados[k] = maiorM entao
            escreval("Mais pontos marcados: ", nomes[k], " (", maiorM, ")")
         fimse
      fimpara
   fimse
fimprocedimento

procedimento ConsultarConfrontos(total: inteiro)
var
   codigoA, codigoB, a, b: inteiro
inicio
   se total < 2 entao
      escreval("Cadastre pelo menos duas equipes.")
   senao
      escreva("Codigo da primeira equipe: ")
      leia(codigoA)
      escreva("Codigo da segunda equipe: ")
      leia(codigoB)
      a <- LocalizarEquipe(codigoA, total)
      b <- LocalizarEquipe(codigoB, total)
      se (a = 0) ou (b = 0) entao
         escreval("Uma ou ambas as equipes nao existem.")
      senao
         se a = b entao
            escreval("Escolha equipes diferentes.")
         senao
            escreval(nomes[a], " x ", nomes[b])
            escreval("Quantidade de confrontos: ", confrontos[a,b])
         fimse
      fimse
   fimse
fimprocedimento

procedimento ContagemRegressiva(numero: inteiro)
inicio
   // Caso-base: zero. Cada chamada reduz numero em um.
   se numero <= 0 entao
      escreval("CAMPEONATO INICIADO!")
   senao
      escreval(numero)
      ContagemRegressiva(numero - 1)
   fimse
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
      escreva("Opcao: ")
      leia(opcao)
      escolha opcao
         caso 1
            CadastrarEquipe(quantidade)
         caso 2
            ListarEquipes(quantidade)
         caso 3
            RegistrarPartida(quantidade)
         caso 4
            ConsultarEquipe(quantidade)
         caso 5
            ExibirClassificacao(quantidade)
         caso 6
            ExibirEstatisticas(quantidade)
         caso 7
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

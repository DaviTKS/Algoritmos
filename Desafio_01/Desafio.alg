algoritmo "Desafio1"

var
   codigos: vetor [1..10] de inteiro
   nomes, capitaes: vetor [1..10] de caractere
   vitorias, empates, derrotas: vetor [1..10] de inteiro
   marcados, sofridos, saldos, pontos: vetor [1..10] de inteiro
   confrontos: vetor [1..10,1..10] de inteiro
   quantidade, opcao, i, j: inteiro
   MAX_EQUIPES, PONTOS_VITORIA, PONTOS_EMPATE, PONTOS_DERROTA: inteiro



procedimento Cadastrar(var total: inteiro)
var
  codigoNovo, posicao, k: inteiro
  nomeNovo, capitaoNovo: caractere
inicio
  se total >= MAX_EQUIPES entao
    escreval("Máximo de equipes preenchidas")


fimalgoritmo
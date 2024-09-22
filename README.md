# Haskell-Card-Games-Blackjack-Poker
Projeto 1 para a cadeira "Principios de Programação"
# Projeto
O projeto consiste de 3 partes (A, B, C)
Encontra-se o enunciado do projeto no ficheiro "projeto1.pdf"
# A. Baralho
Defina uma lista baralho com as 52 cartas do baralho. A sua
definição deve usar uma lista em compreensão, e não uma mera listagem das
cartas do baralho.
# B. Blackjack 
O Blackjack é um jogo de apostas com cartas. Neste jogo, cada
carta vale um certo número de pontos, e o objetivo é chegar o mais próximo
possível dos 21 pontos sem ultrapassar os 21 pontos. Para os efeitos deste
projeto, vamos usar uma versão simplificada das regras oficiais. Cada carta
vale os seguintes pontos:
- ás: vale 1 ou 11 pontos, à escolha do jogador
- dois a dez: vale 2 a 10 pontos, respetivamente
- figuras (valete, dama, rei): vale 10 pontos
No início, o jogador recebe duas cartas. Vamos utilizar um par (tuplo de
tamanho 2) para representar a mão inicial. Exemplos:
- ("2S","JH") : dois e valete, vale 12 pontos
- ("4H","4C") : par de quatros, vale 8 pontos
- ("5C","AD") : cinco e ás, vale 6 ou 16 pontos, à escolha do jogador
- ("AD","JD") : ás e valete, vale 11 ou 21 pontos, à escolha do jogador.
As melhores mãos iniciais são constituídas por um ás e um dez ou figura, pois
permitem atingir a pontuação perfeita de 21 pontos.
Defina uma função combinacoesBlackjack que, dado um número de
pontos, devolva a lista de todas as mãos iniciais de Blackjack (pares de cartas)
com esse número de pontos. Por exemplo, as únicas mãos iniciais que valem 3
pontos são constituídas por dois e ás.
# C. Poker 
O Poker é um outro jogo de cartas. Neste jogo, uma mão é
composta por cinco cartas. Vamos representar cada mão por uma lista de
cinco cartas. Há várias combinações de mãos possíveis. Uma das combinações
mais valiosas chama-se Full House, que corresponde a um trio (três cartas do
mesmo valor) mais um par (duas cartas do mesmo valor). Por exemplo,
["TS","TH","TD","QH","QC"] corresponde a um full house de 10 e
damas.

# Objetivo
O objetivo do primeiro projeto é que os alunos desenvolvam familiaridade
com a sintaxe da linguagem Haskell, nomeadamente a escrita de funções
simples e a definição de listas em compreensão. Pretende-se que após este
projeto, os alunos sejam capazes de compreender e utilizar padrões, guardas,
expressões com where e let, e ainda listas em compreensão com vários
geradores e filtros.

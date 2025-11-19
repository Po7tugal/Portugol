programa {
  inclua biblioteca Tipos --> t
  funcao inicio() {
    inteiro numGrelha = 9, posicaoEscolhida
    caracter grelha[numGrelha]
    logico tabuleiroCheio=falso, alguemGanhou=falso, jogoTerminou=falso
    caracter jogadorAtual = 'X'

    /**
     * colocar dados na grelha / tabuleiro
     */
    para(inteiro i=0; i<numGrelha; i++) {
      grelha[i] = t.inteiro_para_caracter(i)
    }

    faca {

      /** inicio da mostra do tabuleiro */
      escreva("|")
      para(inteiro i=0; i<numGrelha; i++) {
        escreva(' ')
        escreva(grelha[i])
        escreva(" |")
        se (i == 2) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
        } senao se (i == 5) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
        }
      }      
      /** fim da mostra do tabuleiro */

      // pedir ao jogador(es) X ou O
      escreva("\nDiga a posicao em que quer colocar a peça ", jogadorAtual, " : ")
      leia(posicaoEscolhida)
      // verificar se pode jogar ou não naquela posição
      se (posicaoEscolhida >= 0) {
        se (posicaoEscolhida <= 8) {
          se (grelha[posicaoEscolhida] == posicaoEscolhida) {
            grelha[posicaoEscolhida] = jogadorAtual
            // verificar se ganhou !!
            se (grelha[0] == grelha[1] e grelha[1]==grelha[2]) {
              alguemGanhou = verdadeiro
            } senao {
                se (grelha[3] == grelha[4] e grelha[4]==grelha[5]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[6] == grelha[7] e grelha[7]==grelha[8]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[0] == grelha[3] e grelha[3]==grelha[6]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[1] == grelha[4] e grelha[4]==grelha[7]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[2] == grelha[5] e grelha[5]==grelha[8]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[0] == grelha[4] e grelha[4]==grelha[8]) {
                alguemGanhou = verdadeiro
              } senao se(grelha[2] == grelha[4] e grelha[4]==grelha[6]) {
                alguemGanhou = verdadeiro
              }
            } se(grelha[0] e grelha[1] e grelha[2] e grelha[3] e grelha[4] e grelha[5] e grelha[6] e grelha[7] e grelha[8] == "X" ou "O"){
                tabuleiroCheio=verdadeiro
              } senao{
                tabuleiroCheio = verdadeiro
                
                para(inteiro x=0; x<numGrelha; x++) {
                  se (grelha[x] == t.inteiro_para_caracter(x)){
                    tabuleiroCheio = falso
                  }
    }                  
            // se jogou .. verificar se ganhou ... 
            //                       se não ganhou .. ~
            //                              verificar se o tabuleiro esta cheio
            //                              se nao esta cheio .. mudar o jogador            
            se (alguemGanhou ou tabuleiroCheio) {
              jogoTerminou = verdadeiro
            }  senao {
              // mudou o jogador
              se (jogadorAtual == 'X') {
                jogadorAtual = 'O'
              } senao {
                jogadorAtual = 'X'
              }
            }
          }

          }
        }
      }
    } enquanto (jogoTerminou == falso) 

    escreva("|")
      para(inteiro i=0; i<numGrelha; i++) {
        escreva(' ')
        escreva(grelha[i])
        escreva(" |")
        se (i == 2) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
        } senao se (i == 5) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
        }
      }         

    se(alguemGanhou){
      escreva("\nParabéns jogador ", jogadorAtual)
    } senao{
      escreva("\nterminou empatado seus bobalhões")
    }
    
  }
}

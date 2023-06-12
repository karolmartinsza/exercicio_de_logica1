programa {
  funcao inicio() {
    inteiro votos[3][2], somaVotos[4]
    inteiro candidato[4] = {0, 1, 2, 3}
    inteiro maisVotos = 0, vencedor = 0

    para (inteiro i = 0; i < 3; i++){
      para (inteiro j = 0; j < 2; j++){
        escreva("Votos no ", i+1, "º candidato no ", j+1, "º turno: ")
        leia(votos[i][j])
      } 

    para (inteiro j = 0; j < 1; j++){
      somaVotos[i] = votos[i][0] + votos [i][1] 
      se (somaVotos[i] > maisVotos) {
        maisVotos = somaVotos[i]
        vencedor = i
        }
      }
    }
     
    inteiro copia, copiaCandidato
    para(j = 1; j < 3; j++){
      para(i = 0; i < 2; i++){
        se(somaVotos[i] > somaVotos[i+1]){
          copia = somaVotos[i]
          somaVotos[i] = somaVotos[i+1]
          somaVotos[i+1] = copia
          
          copiaCandidato = candidato[i]
          candidato[i] = candidato[i+1]
          candidato[i+1] = copiaCandidato
        }
      }
    }
    limpa()
    para(i = 0; i < 3; i++){
      escreva (candidato[i]+1, ": ", somaVotos[i], "\n")
    }

    escreva ("\n Vencedor: ", vencedor+1)
    escreva ("\n Votos: ", maisVotos)
        
  }
}
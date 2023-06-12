programa {


  funcao inicio() {
    inteiro votos[3][2], somaVotos[4]
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

    cadeia n[2] = {"\n Candidato 1: ", "\n Candidato 2: ", "\n Candidato 3: "}
    inteiro a, b, c
    a = somaVotos[0]
    b = somaVotos[1]
    c = somaVotos[2]
    
    se (a < b) {
      se (b < c) {
        escreva (n[0], a, n[1], b, n[2], c)
      }
      senao{
        escreva (n[0], a, n[2], c, n[1], b)
      }
    }
    senao{
      se (b < c) {
        se (a < c) {
          escreva(n[1], b, n[0], a, n[2], c)
	      }
        senao {
          escreva(n[1], b, n[2], c, n[0], a)
	      }
      }
      senao{
        se (a < b) {
          escreva(n[2], c, n[0], a, n[1], b)
        }
	      senao{
          escreva(n[2], c, n[1], b, n[0], a)
        }
      }
    }


    escreva ("\n Vencedor: ", vencedor+1)
    escreva ("\n Votos: ", maisVotos)
        
  }
}

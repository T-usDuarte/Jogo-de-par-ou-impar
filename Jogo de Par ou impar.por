programa {
  inclua biblioteca Util --> u
  funcao inicio() {

//Declarando variáveis  
    inteiro numE,numA,soma,result,par
    cadeia esc
    
    par=0
    
    escreva("Vamos jogar par ou ímpar! ")

//Escolhendo par ou impar
    enquanto(par==0){
      escreva("Você quer par ou impar?\n" )
      leia(esc)
      se(esc=="par"ou"Par"ou"PAR"){
        par=2
      }
      senao se(esc=="impar"ou"Impar"ou"IMPAR"){
        par=1
      }
      senao{
        limpa()
        escreva("'",esc,"'"," não é uma opção...\n")
      }
    } 

    escreva("Ótimo, ",esc," então!\n")
    
//Recolhendo o valor escolhido
    faca{
      escreva("Agora escolha um número de 1 a 5: ")
      leia(numE)
      se(numE>5 ou numE<1){
        limpa()
        escreva("Você escolheu ",numE,"! ","Esse número não pode, trapaceiro!\n")
      }
    } enquanto(numE>5 ou numE<1)

    limpa()

//Calculos
    numA = u.sorteia(1,5)
    escreva("Você escolheu ",numE,", eu escolhi ",numA,"...\n")
    soma = numA + numE
    result = soma%2

    escreva("Isso dá ",soma,"!\nJá que você escolheu ",esc,"... ")

//Resultados
    se(result==0 e par==2){
        escreva("Você venceu!")
    }
    senao se(result!=0 e par==1){
      escreva("Você venceu!")
    }
    senao{
      escreva("Eu venci!")
    }
    }
  }
}

programa {
  inclua biblioteca Util --> u
  funcao inicio() {

//Declarando vari�veis  
    inteiro numE,numA,soma,result,par
    cadeia esc
    
    par=0
    
    escreva("Vamos jogar par ou �mpar! ")

//Escolhendo par ou impar
    enquanto(par==0){
      escreva("Voc� quer par ou impar?\n" )
      leia(esc)
      se(esc=="par"ou"Par"ou"PAR"){
        par=2
      }
      senao se(esc=="impar"ou"Impar"ou"IMPAR"){
        par=1
      }
      senao{
        limpa()
        escreva("'",esc,"'"," n�o � uma op��o...\n")
      }
    } 

    escreva("�timo, ",esc," ent�o!\n")
    
//Recolhendo o valor escolhido
    faca{
      escreva("Agora escolha um n�mero de 1 a 5: ")
      leia(numE)
      se(numE>5 ou numE<1){
        limpa()
        escreva("Voc� escolheu ",numE,"! ","Esse n�mero n�o pode, trapaceiro!\n")
      }
    } enquanto(numE>5 ou numE<1)

    limpa()

//Calculos
    numA = u.sorteia(1,5)
    escreva("Voc� escolheu ",numE,", eu escolhi ",numA,"...\n")
    soma = numA + numE
    result = soma%2

    escreva("Isso d� ",soma,"!\nJ� que voc� escolheu ",esc,"... ")

//Resultados
    se(result==0 e par==2){
        escreva("Voc� venceu!")
    }
    senao se(result!=0 e par==1){
      escreva("Voc� venceu!")
    }
    senao{
      escreva("Eu venci!")
    }
    }
  }
}

programa //apague//
{
	
	funcao inicio()
	{	cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		
		inteiro opcao = 0,opcao2
		cadeia saque,deposito,simOunao
		real saldoInicial=0.0,cheque=30.0 ,saldoFinal=0.0, debito=0.0, credito=0.0,taLao=0,saldo
		
		
		//Devolução de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao Banco BNGM!\n")
		escreva("-----------------------------\n")

		para(inteiro z = 0; z < 100; z++){
		//Escopo do menu
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 6; x++){
			escreva(x," - ",menu[x],"\n")	
			}
		escreva("------------\n")	
		// Final do Menu
		// Pedido de opção de menu
		escreva("\nSelecione uma opção de 0 a 5: ")
		leia(opcao)
		limpa() // limpa console

		se(opcao == 0){
			//codigo conta poupança
		
			}
		senao se(opcao == 1){
			//codigo conta corrente
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
		escreva("Número : 844536-3\n")
		
		escreva("Saldo em conta de : R$",saldoInicial,"\n")
          escreva("Digite um valor para creditar: ")
             leia(credito)
               saldoInicial+=credito
          escreva ("Seu saldo é de :"+saldoInicial)
     
                se(credito>0){
                    para(inteiro x=0; x < 9; x++){
          escreva("\nDigite um valor para continuar:\n")
          escreva("1=credito\n2=debito\n3=cheque\n4=sair\n")
             leia(opcao)
              limpa()
            
                se(opcao==1){
          escreva("Digite valor para credita em sua conta:\n")
             leia(credito)
               saldoInicial+=credito
              
          escreva("Seu saldo é: ",saldoInicial)
                }
                
                 senao se(opcao==2){
          escreva("Digite valor do debito:\n")
             leia(debito)
               se(saldoInicial-debito <= 0){
               	
               	escreva("Valor negativo, deposite uma credito!!")
               	
               	               	}
               	 senao{
               	 	 saldoInicial-=debito
               	 	   }
               
          escreva("Seu saldo é: ",saldoInicial)
                }
                senao se (opcao==3){
                    para(inteiro X=0; X<3; X++){
               	  		
          escreva("\nDeseja pedir cheque? S=1 ou N=2\n")
             leia (opcao2)
                se(taLao>1){
                	escreva("Limite de talao alcancado")
                	pare
                }
             
           	  senao se (opcao2== 1 ){
                    
           	   	saldoInicial=saldoInicial-30
           	   	 taLao++
          escreva("Seu cheque de "+cheque+ " foi creditado")
               
                
                
               }
                   senao se(opcao2==2){
                   
                   pare
           	      }
              } 
           	   }
           	   
           	   senao se(opcao==4){
           	  escreva("saindo...")
           		 
           		 pare
           	                 	     }
               	      }
	              }
		senao se(opcao == 2){
			//codigo conta especial
	
			}
		senao se(opcao == 3){
		}
		
		senao se(opcao == 5){
			escreva("Obrigado por usar o Banco BNGM!!\n\n")
			pare
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			pare
			}	
					
		}
		saldo = 0
	}    
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2499; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
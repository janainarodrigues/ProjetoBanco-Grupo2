programa //apague//
{
	inclua biblioteca Util
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		inteiro opcao = 0, movimento = 0
		inteiro opcao2 = 0
		
		
		
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
		
			}
		senao se(opcao == 2){
			//codigo conta especial
	
			}
		senao se(opcao == 3){
			// conta empresa
		
		}
		senao se(opcao == 4){
		real movimentos = 0.00, saldo=0.00
		real limite = 5000.00, valorDebito, valorCredito, valorAnterior = 0.0, valorDebitoS = 0.0
		inteiro escolher, escolher2,escolher3, escolher4, conta
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: ", menu[opcao],"\n")
			escreva("-----------------------------\n")
			conta = Util.sorteia(000000,999999)
			escreva("\nNúmero: ",conta,"-3\n")

			para(inteiro vezes = 0; vezes<10; vezes++){ 
				escreva("Seu saldo é: " + saldo + "\n")
				escreva("Seu limite é: " + limite + "\n")
				escreva("1 - Debito \n2 - Credito \n3 - Sair\n" + movimentos + "\n")
				leia(escolher2) // escolher 2 = primeira escolha
			se(escolher2 == 3){
					limpa()
             			saldo = 0.0
                         pare  
				}
				para(inteiro vezes2 = 0; vezes2<10; vezes2++){
					//------------------------------DEBITO----------------------------
					se (escolher2 == 1){
					limpa()	
					escreva("Digite o quanto você deseja retirar do limite: \n")
					leia(valorDebito)
					se(valorDebito>5000){
						escreva("Valor invalido \n")
						pare
						
					}
					senao se(valorDebito < 5001.00){
						escreva("Adicionaremos: " + valorDebito + " para o seu saldo. \n")
                        		escreva("Digite: \n1 - confirmar ou 2 - Sair  \n")
                        		leia(escolher4)
                        		
                        		se(escolher4 == 1){
      						//movimentos++
						 se(valorDebito <= 5000.00){
							
							se(valorDebito + valorDebitoS  >= 5000.01){
								escreva("\n\nValor insuficiente para retirar!!!\n\n")
							
							}
							senao{
							saldo += valorDebito // Saldo = saldo + valorDebito
							limite -= valorDebito //limite = saldo + valorDebito
							valorDebitoS += valorDebito
							movimentos++

							escreva("\nSeu saldo agora é de R$: ", saldo)
							escreva("\n\nSeu saldo para emprestimo é de R$: ", limite)
							escreva("\nSeu valor de emprestimo já solicitado é de R$: ", valorDebitoS,"\n")
							}
						 }
                        		
                        		senao se(escolher4 == 2){
                        			escreva("Saindo...")
                        			movimento++
                        		}
                        		se(movimento >= 8 e valorDebito < limite){
						escreva("\n")
						}
						senao{
						pare
						}
                        		
						
					se (movimento == 9){
						escreva("Limite de movimentos diário atingido! \nVolte amanhã para mais dez movimentos")					
					}//fecha movimentos == 10
					senao se(limite <= 0){
							limpa()
							escreva("Limite Estourado \n")
							pare	
							}
						}		
						}//fecha se debito < 5001
					}//fecha se escolher2 = 1
					se(escolher2 == 2){
						limpa()
                    		escreva("Digite o quanto você deseja creditar no seu saldo: \n")
                  			leia(valorCredito)
                  			se(valorCredito > 0){
                  				escreva("Adicionaremos: " + valorCredito + " para o seu saldo. \n")
                        			escreva("Digite: \n1 - confirmar ou 2 - Sair  \n")
                        			leia(escolher3)
                        			 se(escolher3 == 2){
                        			 	escreva("Saindo...")
                            			pare
                        			 } // fecha escolher3 == 2
                        			  senao se(escolher3 == 1){
                        			  	 saldo += valorCredito 
                            			 pare   
                        			  }//fecha escolher3 == 1
                        			  senao{
                        			  	escreva("Número inválido! \n") 
                    				pare
                        			  }//fecha num invalido
                  			}//fecha credito > 0
					}//fecha se escolher2 = 2
					
				}//fecha o 2 para
			}//fecha o 1 para

			
				
	
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5008; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
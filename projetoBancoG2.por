programa 
{
	inclua biblioteca Util
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		inteiro opcao = 0 
		
		
		//Devolução de boas vindas
		escreva("-----------------------------------------\n")
		escreva(" Bem vindo ao Banco BNGM! -- Grupo 02 -- ")
		escreva("  \n   Onde o seu dinheiro vale ouro! \n")
		escreva("-----------------------------------------\n")

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
			contaPoupanca()
			}
		senao se(opcao == 1){
			//codigo conta corrente
				ContaCorrente()
			}
		senao se(opcao == 2){
			contaEspecial()
	
			}
		senao se(opcao == 3){
			ContaEmpresa()
			
			}
		senao se(opcao == 4){
			contaEstudantil()
	
			}
		senao se(opcao == 5){
				sair()
				pare
			}
			
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Escolha outra opção do menu!!\n")
			}	
			
		}
	}
	funcao contaPoupanca(){
		//codigo conta poupança
		cadeia menu2[4]={"Saque","Depósito","Saldo","Sair"}
		real saldoInicial=0.00, saldoFinal=0.00, debito=0.00, credito=0.00
		real saldo=0.00,emprestimoF=0.00,emprestimoS=0.00,emprestimo=0.00
		inteiro data=0, movimentos=0,opcao2=0,diaAniversarioPoupanca=5
		// Abertura código conta poupança
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: Poupança \n")
		escreva("-----------------------------\n")
		escreva("Número:123456-0\n")
		escreva("Saldo em conta de:R$", saldoInicial)

		//Escopo do 2º menu
		
		para(inteiro y = 0; y <20; y++){           // quantidade de vezes que roda a pergunta
		escreva("\nVerificaçaõ de data aniversário conta poupança")
		escreva("\nDigite que dia é hoje?")
		leia(data)
		// Condições da data
		se(data <=0){
				escreva("\nDigite um valor positivo\n")
		}
		se(data >=32){
				escreva("\nOpção inválida, digitar números de 1 à 31!")
			}
		se (data==diaAniversarioPoupanca){
			saldo=(saldo*0.05)-(-saldo)
		escreva("Saldo atualizado é:",saldo)
		}
		senao {	
		}
		
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 4; x++){
			escreva(x," - ",menu2[x],"\n")	
			
			}
		escreva("------------\n")
		escreva("Quantidades de rodadas: ",movimentos)	
		// Final do 2ºMenu
		// Pedido de opção de 2ºMenu
		
		escreva("\nSelecione uma opção de 0 a 3: ")
		leia(opcao2)
		limpa() // limpa console
		se(opcao2 == 3){
		// O programa irá retornar ao Menu principal
			
			saldo=0.0
			inicio()
			}
		//opções 2°Menu
		
		se(opcao2 == 0){     //Para Débito

			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			escreva("\nLimite de empréstimo:R$ ",emprestimoF,"\n")        //Item de complemento para informar que não tem saldo de emprestimo disponivel
			escreva("Seu saldo da conta é:R$ ",saldo,"\n")
			
			
			escreva("Escreva o valor de saque: ")                       // a ser debitado
			leia(debito)
			se(debito < 0){
				escreva("\nDigite um valor positivo\n")
				}
			senao se(saldo-debito < 0){
				escreva("\nSaldo insuficiente, faça um despósito! \n")      // Realizar crédito na conta
				}
			senao se(movimentos <10){							// Limite de rodada
			saldo -= debito
			movimentos++

			escreva("\nSeu saldo atual é de R$: ", saldo)
			}
		}
			//opções 2°Menu
			senao se(opcao2 == 1){  //Para crédito
			escreva("-----------------------------\n")
			escreva("   Tipo e operação: \n")
			escreva("-----------------------------\n")
			
			escreva("\nSeu saldo da conta é: R$ ",saldo,"\n")
			escreva("Limite de empréstimo:R$ ",emprestimoF,"\n")         //Item de complemento para informar que não tem saldo de emprestimo disponivel
			
			escreva("\nDigite o valor a ser depositado: ")              // Realizou um crédito
			leia(credito)
			
			se(credito < 0){
				escreva("\nDigite um valor positivo\n")
			}
			senao se(movimentos <10){							// Limite de rodada
			saldo +=credito
			movimentos++
			
			escreva("\nSeu saldo atual é de R$: ", saldo)
				}
			
			}
			//opções 2°Menu
		senao se(opcao2 == 2){    //Verificar Saldo
			escreva("Seu saldo é de R$: ",saldo,"\n")  
		}
		senao se(movimentos <10){							// Limite de rodada
			
			escreva("\nSeu saldo atual é de R$: ", saldo)
			pare
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
			
			}
			escreva("\nLimite de movimentações diarios!!\n")
		}
		funcao contaEstudantil (){
		real movimentos = 0.00,movimento = 0.0, saldo=0.00
		real limite = 5000.00, valorDebito, valorCredito, valorAnterior = 0.0, valorDebitoS = 0.0
		inteiro escolher, escolher2,escolher3, escolher4, conta
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: Estudantil \n")
			escreva("-----------------------------\n")
			conta = Util.sorteia(000000,999999)
			escreva("\nNúmero: ",conta,"-3\n")

			para(inteiro vezes = 0; vezes<10; vezes++){ 
				escreva("Seu saldo é: " + saldo + "\n")
				escreva("Seu limite é: " + limite + "\n")
				escreva("1 - Debito \n2 - Credito \n3 - Sair\n")
				leia(escolher2) // escolher 2 = primeira escolha
			se(escolher2 == 3){
					limpa()
             			saldo = 0.0
                        inicio()
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
                        			  	 movimentos++
                            			 pare   
                        			  }//fecha escolher3 == 1
                        			  senao{
                        			  	escreva("Número inválido! \n") 
                    				
                        			  }//fecha num invalido
                  			}//fecha credito > 0
					}//fecha se escolher2 = 2
					
				}//fecha o 2 para
			}//fecha o 1 para	
	}

	funcao contaEspecial(){
		real saldo = 0.00, limite = 1000.00, movimento = 0.00 
			real variavelExtra = 0.00, limiteEspecial = 0.00, usarLimite = 0.00
			inteiro escolher1 = 0, limiteMovimentos = 0
			caracter escolher = ' '
			para(inteiro x = 0; x<10; x++){
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: Especial \n")
			escreva("-----------------------------")
			escreva("\nNº da Conta: 000211-0\n")
			escreva("Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", limite)	
			escreva("\n---------MOVIMENTO-----------\n")
			escreva("1 - DÉBITO: \n")
			escreva("2 - CRÉDITO: \n")
			escreva("3 - VOLTAR: \n")
			leia(escolher1)
			limpa()
			se(escolher1 == 3){
			
			inicio()
			
			}
			para(inteiro w=0;w<20;w++){
				se(escolher1 == 1){
						escreva("---------------DÉBITO----------------\n")
						escreva("Escreva a quantia que deseja utilizar: R$")
						leia(movimento)
						escreva("Você deseja continuar? S/N:")
						leia(escolher)
						limpa()
						se(escolher == 'S'ou escolher == 's'){
							se(limiteMovimentos<10){
								se(movimento<0){
									escreva("\nNÚMERO INVÁLIDO\n")
									pare
								}
								se(saldo == 0){
									usarLimite = limite - movimento
									limite -= movimento 
									escreva("Você retirou ",movimento," do seu limite.\n")
									escreva("\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", usarLimite,"\n")
									limiteMovimentos++
						}
								senao se(saldo>0 e saldo>movimento){
									saldo = saldo - movimento 
									escreva("Você retirou ",movimento," do seu saldo.\n")
									escreva("\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", limite,"\n")
									limiteMovimentos++
									
						}
								senao se(saldo>0 e saldo<movimento){
									variavelExtra = movimento - saldo
									limiteEspecial -= variavelExtra
									limite = limite + limiteEspecial
									saldo = 0.00
									escreva("Retiramos ",movimento," do seu saldo e o restante do seu limite.\n")
									escreva("\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$",limite,"\n")
									limiteMovimentos++
						}
								senao se(movimento>saldo e movimento>limite){
									escreva("NÃO HÁ SALDO E LIMITE SUFICIENTE")
						}
								se(limite<0){
								escreva("NÃO HÁ LIMITE SUFICIENTE\n")
								pare
								}
								//senao se(saldo>0 e limite<1000)
					}
				}
				se(escolher == 'N' ou escolher == 'n'){
							escreva("VOLTANDO PARA O MENU\n")
							pare
				}				
			}
			
		
				se(limiteMovimentos >=10){
				limpa()
				escreva("\n")
				escreva("\nLIMITE DE MOVIMENTOS\n")
				escreva("VOLTE AMANHA")
				escreva("\n")
				pare
				}
				se(escolher1 == 2){
					escreva("---------------CRÉDITO----------------\n")
					escreva("Escreva a quantia que deseja creditar: R$")
					leia(movimento)
					escreva("Você deseja continuar? S/N:")
					leia(escolher)
					limpa()
							
							se(movimento<0){
								escreva("NÚMERO INVÁLIDO\n")
								pare
				}
							se(escolher == 'S' ou escolher == 's'){
						//se(limiteMovimentos>10){
								saldo = saldo + movimento
								limiteMovimentos++
								escreva("\n","Saldo atual da conta: R$", saldo,"\n")
								
				}
							se(escolher == 'N' ou escolher == 'n'){
								escreva("OPÇÃO INVÁLIDA\n")
								escreva("VOLTANDO PARA O MENU\n")
								limpa()
								pare
					}			
				se(limiteMovimentos >10){
				limpa()
				escreva("\n")
				escreva("\nLIMITE DE MOVIMENTOS\n")
				escreva("VOLTE AMANHÃ")
				escreva("\n")
				pare
			
					}			
				}		
			}
		}
	}
		funcao ContaCorrente(){
		inteiro opcao = 0,opcao1, opcao2,movimentos=0
		cadeia saque,deposito,simOunao
		real saldoInicial=0.0,cheque=30.0 ,saldoFinal=0.0, debito=0.0, credito=0.0,taLao=0,saldo
		//codigo conta corrente
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: Corrente\n")
		escreva("-----------------------------\n")
		escreva("Número : 844536-3\n")
		
		escreva("Saldo em conta de : R$",saldoInicial,"\n")
          escreva("Digite um valor para creditar: ")
             leia(credito)
               saldoInicial+=credito
               movimentos++
          escreva ("Seu saldo é de :"+saldoInicial)
     
                se(credito>0){
                    para(inteiro x=0; x < 20; x++){
          escreva("\nDigite um valor para continuar:\n")
          escreva("1=credito\n2=debito\n3=cheque\n4=sair\n")
             leia(opcao1)
              limpa()
            
                se(opcao1==1){
          escreva("Digite valor para credita em sua conta:\n")
             leia(credito)
                 se(movimentos < 10){
			
			
               saldoInicial+=credito
               movimentos++ 
               
          escreva("Seu saldo é: ",saldoInicial)
                  
                   }
                }
                
                 senao se(opcao1==2){
          escreva("Digite valor do debito:\n")
             leia(debito)
               se(saldoInicial-debito <= 0){
               	
               	escreva("Saldo insuficiente, verifique seu saldo e tente novamente!!\n!!")
               	
               	               	}
               	 senao se (movimentos<10){
               	 	 saldoInicial-=debito
               	 	 movimentos++
               	 	   } 
               	 	    senao{
               	 	    	
               	 	    	escreva("Limite exedidos")
               	 	    	pare
               	 	    	
               	 	    	}
               
          escreva("Seu saldo é: ",saldoInicial)
                }
                senao se (opcao1==3){
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
           	   	 movimentos++
          escreva("Seu cheque de "+cheque+ " foi creditado")
               
                
                
               }
                   senao se(opcao2==2){
                   
                   pare
           	      }
              } 
           	   }
           	   
           	   senao se(opcao1==4){
           	  		inicio()
           	           }
               	      }
	              }


		
		}
		funcao ContaEmpresa(){
			//codigo conta empresa
		cadeia menu2[5]={"Debito","Credito","Emprestimo","Saldo","Voltar"}
		inteiro opcao2 = 0, conta, movimento = 0
		real movimentos = 0.00, saldo=0.00, debito = 0.00, credito = 0.00, emprestimo
		real emprestimoF = 10000.00, emprestimoS = 0.00
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: Empresa \n")
		escreva("-----------------------------\n")
		conta = Util.sorteia(000000,999999)
		escreva("\nNúmero: ",conta,"-3\n")
		
		//Escopo do menu
		para(inteiro y = 0; y <= 20; y++){
		
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 5; x++){
			escreva(x," - ",menu2[x],"\n")	
			}
		escreva("------------\n")	
		// Final do Menu
		// Pedido de opção de menu
		escreva("\nSelecione uma opção de 0 a 4: ")
		leia(opcao2)
		limpa() // limpa console

		//opções 2° menu
	
			se(opcao2 == 0){     //Debito

			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			escreva("\nSeu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n\n")

			escreva("PARA CANCELAR A OPERAÇÃO DIGITE: 0\n")
			escreva("PARA CONTINUAR A OPERAÇÃO DIGITE: 1\n")
			leia(debito)
			se(debito > 1 ou debito < 0){
				limpa()
				escreva("\nNumero invalido!\n")
				escreva("\nVoltando ao Menu!\n")
				}
			senao se(debito == 0){
				limpa()
				escreva("\nCancelado!!!\n")
				}
			senao se(debito == 1){	
			limpa()
			escreva("Escreva o valor a ser debitado: ")
			leia(debito)
			se(debito <= 0){
				escreva("\nDigite um valor positivo\n")
				}
			senao se(saldo - debito < 0){
				escreva("\nSaldo insuficiente, faça um credito \n")
				}
			senao se(movimentos < 10){
			saldo -= debito
			movimentos++

				escreva("\nSeu saldo agora é de R$: ", saldo,"\n")
				escreva("\n\nSeu saldo para emprestimo é de R$: ", emprestimoF,"\n")
			}
			
		}
		
	}
		senao se(opcao2 == 1){  //Credito
			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			escreva("\nSeu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n\n")
			
			escreva("PARA CANCELAR A OPERAÇÃO DIGITE: 0\n")
			escreva("PARA CONTINUAR A OPERAÇÃO DIGITE: 1\n")
			leia(credito)
			se(credito > 1 ou credito < 0){
				limpa()
				escreva("\nNumero invalido!\n")
				escreva("\nVoltando ao Menu!\n")
				}
			senao se(credito == 0){
				limpa()
				escreva("\nCancelado\n")
				}
			senao se(credito == 1){
			limpa()	
			escreva("Escreva o valor a ser creditado: ")
			leia(credito)
			se(credito <= 0){
				escreva("\nDigite um valor positivo\n")
			}
			senao se(movimentos < 10){
			saldo += credito
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			escreva("\n\nSeu saldo para emprestimo é de R$: ", emprestimoF,"\n")
				}
			}
		}
		senao se(opcao2 == 2){    //Emprestimo
			escreva("-----------------------------\n")
			escreva(" Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			escreva("\nSeu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n\n")

			escreva("PARA CANCELAR A OPERAÇÃO DIGITE: 0\n")
			escreva("PARA CONTINUAR A OPERAÇÃO DIGITE: 1\n")
			leia(emprestimo)
			se(emprestimo > 1 ou emprestimo < 0){
				limpa()
				escreva("\nNumero invalido!\n")
				escreva("\nVoltando ao Menu!\n")
				}
			senao se(emprestimo == 0){
				limpa()
				escreva("\nCancelado\n")
				}
			senao se(emprestimo == 1){	
			limpa()
			escreva("Escreva o valor de emprestimo: ")
			leia(emprestimo)
			
			se(emprestimo <= 0){
				escreva("\nDigite um valor positivo\n")
				}
			
			senao se(emprestimo <= 10000.00){
				
				se(emprestimo + emprestimoS  >= 10000.01){
				limpa()
				escreva("\n\nValor insuficiente para emprestimo!!!\n\n")
				}
				senao{
				saldo += emprestimo
				emprestimoF -= emprestimo
				emprestimoS += emprestimo
				movimentos++

				escreva("\nSeu saldo agora é de R$: ", saldo)
				escreva("\n\nSeu saldo para emprestimo é de R$: ", emprestimoF)
				escreva("\nSeu valor de emprestimo já solicitado é de R$: ", emprestimoS,"\n")
				}
			
			}
			senao{
				limpa()
				escreva("\n\nValor insuficiente para emprestimo!!!\n\n")
				}
				
			}
			
		}
		senao se(opcao2 == 3){    //Verificar Saldo
			escreva("-----------------------------\n")
			escreva(" Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			se(movimentos > 10){
				escreva("\n\nLimite de movimentações diarios!!\n")
				}
			senao{
			escreva("\nSeu saldo é de R$: ",saldo,"\n")  
			movimentos++
			}
		}
		senao se(opcao2 == 4){
		/*escreva("-----------------------------------------\n")
		escreva(" Bem vindo ao Banco BNGM! -- Grupo 02 -- \n")
		escreva("   Onde o seu dinheiro vale ouro! \n")
		escreva("-----------------------------------------\n")*/
			inicio()
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Escolha outra opção do menu!!\n")
			
			}
				
			se(movimentos > 9){
			escreva("\n\nLimite de movimentações diarios!!\n")
			escreva("\nVoltando ao menu principal!!\n")
			inicio()
			}
			
		
		}
			saldo = 0.0	
			movimentos = 0.0	
	}
	funcao sair(){
		escreva("Obrigado por usar o Banco BNGM!!\n\n")
		
	}

	
}
	
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 498; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */

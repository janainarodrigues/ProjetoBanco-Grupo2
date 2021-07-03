programa //APAGUE-ME
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		inteiro opcao = 0
<<<<<<< HEAD
		//
		//
=======
		
>>>>>>> 1c66caa9761c31ee94300f811b7efdf1dd3be091

		//Devolução de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao Banco Mydas!\n")
		escreva("-----------------------------\n")
		
		//Escopo do menu
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 6; x++){
			escreva(x," - ",menu[x],"\n")	
			}
		escreva("------------\n")	
				
		escreva("\nSelecione uma opção de 0 a 5: ")
		leia(opcao)
		limpa()

		se(opcao == 0){
			//codigo conta poupança
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			
			
			}
		senao se(opcao == 1){
			//codigo conta corrente
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
		
			}
		senao se(opcao == 2){
			//codigo conta especial
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			}
		senao se(opcao == 3){
			//codigo conta empresa
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			}
		senao se(opcao == 4){ //se precionar 4 cai na ContaEstudantil
			//Declarei minhas variáveis 
<<<<<<< HEAD
			real limite = 4000.00, saldo = 0.0, valorDebito, valorAnterior = 0.0 , valorCredito = 0.0, excesso = 0.0
			inteiro escolher, escolher2,escolher3, movimento = 0
=======
				real limite = 5000.00, saldo = 0.0, valorDebito, valorAnterior = 0.0 , valorCredito
				inteiro escolher, escolher2, movimento = 0
>>>>>>> 1c66caa9761c31ee94300f811b7efdf1dd3be091
				//interface gráfica	
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: ", menu[opcao],"\n")
			escreva("-----------------------------\n")
				//para serve pra montar um loop com 10 movimentos bancários
<<<<<<< HEAD
			para(inteiro vezes = 0; vezes<10; vezes++){  
				escreva("Seu saldo é: " + saldo + "\n")
				escreva("Seu saldo estudantil é: " + limite + "\n")
				escreva("1 - Debito \n2 - Credito \n3 - sair \n")
				leia(escolher2)
				se (escolher2 == 1){
						
				escreva("Digite o quanto você deseja retirar do fundo estudantil: \n")
				leia(valorDebito)
						//Se valorDebitado for maior que o saldo, prossiga
				se(valorDebito>=saldo){ 
					escreva("Retiraremos " + valorDebito + " do seu fundo estudantil \nPressione 1 para confirmar e 2 para sair \n ")
					leia(escolher)
					
				 se(escolher == 1){
					saldo += valorDebito
					limite -= valorDebito
					escreva("Seu atual saldo é: " + saldo +"\n")
					escreva("Seu atual saldo do fundo estudantil é: " + limite +"\n")
					movimento++
					valorAnterior= saldo + valorDebito
					}
				senao se(escolher == 2){
					escreva("Saiu...!!")
					pare
					}
				se(valorAnterior == valorDebito){
					saldo += valorDebito
					limite -= valorDebito
					escreva("Seu atual saldo é: " + saldo +"\n")
					escreva("Seu atual saldo do fundo estudantil é: " + limite +"\n")
					movimento++
					}					
					}
				se (movimento >= 10){
					escreva("Limite de movimentos diário atingido! \nVolte amanhã para mais dez movimentos")
					
					}
				se(limite == 0){
					escreva("Limite Estourado")
					pare
					}
					}
			// ----------------------------------Credito------------------------------------
				se(escolher2 == 2){
					escreva("Digite o quanto você deseja creditar no seu saldo: \n")
					leia(valorCredito)
					se(valorCredito > 0){
						escreva("Adicionaremos: " + valorCredito + " para o seu saldo. \n")
						escreva("Digite: \n1 - confirmar ou 2 - Sair  \n")
						leia(escolher3)
						se(escolher3 == 2){
							escreva("Saindo...")
							pare
						}
						senao se(escolher3 == 1){
							saldo += valorCredito							
						}
			
						
						senao{
							escreva("Número inválido!")
						}
					}
				}
				//-------------------------SAIR---------------------------
						se(escolher2 == 3){
							escreva("Saindo...")
							pare
						}
						senao{
							escreva("Número inválido!")
							pare
						}
						
												
			
					}//aqui termina o para
					} //aqui termina o se Primordial
=======
				para(inteiro vezes = 0; vezes<10; vezes++){  
					escreva("Seu saldo é: " + saldo + "\n")
					escreva("Seu saldo estudantil é: " + limite + "\n")
					escreva("1 - Debito \n2 - Credito \n")
					leia(escolher2)
					se (escolher2 == 1){
						
					escreva("Digite o quanto você deseja retirar do fundo estudantil: \n")
					leia(valorDebito)
						//Se valorDebitado for maior que o saldo, prossiga
						se(valorDebito>saldo){ 
						escreva("Retiraremos " + valorDebito + " do seu fundo estudantil \nPressione 1 para confirmar e 2 para sair \n ")
						leia(escolher)
						
							se(escolher == 1){
							saldo += valorDebito
							limite -= valorDebito
							escreva("Seu atual saldo é: " + saldo +"\n")
							escreva("Seu atual saldo do fundo estudantil é: " + limite +"\n")
							movimento++
							valorAnterior+=saldo
							}
								senao{
								escreva("Programa Finalizado!!")
								pare
								}
									se(valorAnterior == valorDebito){
										saldo += valorDebito
										limite -= valorDebito
										escreva("Seu atual saldo é: " + saldo +"\n")
										escreva("Seu atual saldo do fundo estudantil é: " + limite +"\n")
										movimento++
									}
											senao{
											escreva("Programa Finalizado!!")
												
											}
										
										}
												se (movimento >= 10 ){
												escreva("Limite de movimentos diário atingido! \nVolte amanhã para mais dez movimentos")
					
												}
													se(limite == 0){
													escreva("Limite Estourado")
													pare
												}
					}
													senao{
														 escreva("1")
														}
												
			
		}
					}
>>>>>>> 1c66caa9761c31ee94300f811b7efdf1dd3be091
					
					
					
					
		

				
	

			//------------------------------------------------------
		senao se(opcao == 5){
			escreva("Programa Finalizado!!")
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
			
	}

}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 4392; 
=======
 * @POSICAO-CURSOR = 3423; 
>>>>>>> 1c66caa9761c31ee94300f811b7efdf1dd3be091
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
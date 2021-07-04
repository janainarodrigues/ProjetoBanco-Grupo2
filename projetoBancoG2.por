programa
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		inteiro opcao = 0

		//Devolução de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao Banco Mydas!\n")
		escreva("-----------------------------\n")
		
		//Escopo do menu
		para(inteiro y=0; y < 100; y++){
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 6; x++){
			escreva(x," - ",menu[x],"\n")	
			}
		escreva("------------\n")	
				// Final do Menu		
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
			real saldo = 0.00, limite = 1000.00, movimento = 0.00 
			real variavelExtra = 0.00, limiteEspecial = 0.00, usarLimite = 0.00
			inteiro escolher1 = 0, limiteMovimentos = 0
			caracter escolher = ' '
			para(inteiro x = 0; x<10; x++){
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: ",menu[opcao],"\n")
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
			pare
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

		senao se(opcao == 3){
			//codigo conta empresa
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			}
		senao se(opcao == 4){
			//codigo conta estudantil
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			}
		senao se(opcao == 5){
			escreva("Programa Finalizado!!")
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1683; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
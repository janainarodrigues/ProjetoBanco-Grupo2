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
			real movimentoDebito = 0.00, movimentoCredito = 0.00
			real usarLimite = 0.00,valorDebito = 0.00,valorCredito = 0.00 
			inteiro escolher1 = 0
			caracter escolher
			
			escreva("-----------------------------\n")
			escreva("   Tipo de conta: ",menu[opcao],"\n")
			escreva("-----------------------------\n")
			escreva("\n\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", limite)	
			escreva("\n---------MOVIMENTO-----------\n")
			escreva("1 - DÉBITO: \n")
			escreva("2 - CRÉDITO: \n")
			leia(escolher1)

			para(inteiro x=0;x<3;x++){
				se(escolher1 == 1){
						escreva("---------------DÉBITO----------------\n")
						escreva("Escreva a quantia que deseja utilizar: R$")
						leia(movimento)
						escreva("Você deseja continuar? S/N:")
						leia(escolher)
						se(escolher == 'S'ou escolher == 's'){
							//valorDebito = saldo + movimento
							movimentoDebito = limite - movimento
							//saldo += movimento
							limite -= movimento
							limpa()
							escreva("Você retirou ",movimento," do seu limite.\n")
							escreva("\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", movimentoDebito)
							escreva("\n")
							se(movimentoDebito<0){
								escreva("LIMITE INSUFICIENTE")
								pare
								
							}
					}
						se(escolher == 'N' ou escolher == 'n'){
							escreva("-----------------------------\n")
							escreva("   Tipo de conta: ",menu[opcao],"\n")
							escreva("-----------------------------\n")
							escreva("\n\n","Saldo atual da conta: R$", saldo, "  -  Limite disponível: R$", limite)	
							escreva("\nMOVIMENTO - 1 DÉBITO -- 2 CRÉDITO\n")
							leia(escolher1)
							
					}
						
			}
				se(escolher1 == 2){
					escreva("---------------CRÉDITO----------------\n")
					escreva("Escreva a quantia que deseja creditar: R$")
					leia(movimento)
					escreva("Você deseja continuar? S/N:")
					leia(escolher)
					limpa()
					se(escolher == 'S' ou escolher == 's'){
					saldo = saldo + movimento
					escreva("\n","Saldo atual da conta: R$", saldo,"\n")
				}
					senao se(escolher == 'N' ou escolher == 'n'){
									escreva("OPÇÃO INVÁLIDA\n")
				}					escreva("VOLTANDO PARA O MENU")
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

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2028; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
programa
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		cadeia menu2[4]={"Saque","Depósito","Saldo","Sair"}
		real saldoInicial=0.00, saldoFinal=0.00, debito=0.00, credito=0.00
		real saldo=0.00,emprestimoF=0.00,emprestimoS=0.00,emprestimo=0.00
		inteiro opcao = 0,data=0, movimentos=0,opcao2=0,diaAniversarioPoupanca=5

		//Apresentação de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao BNGM!Grupo:2\n")                //DEFINIR SE VAI USAR SILGA OU NOME
		escreva("Onde seu dinheiro vale ouro\n")
		escreva("-----------------------------\n")
		para(inteiro z = 0; z < 20; z++){

		//Escopo do  1ºMenu
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 6; x++){
			escreva(x," - ",menu[x],"\n")	
			}
		escreva("------------\n")	
		// Final do 1ºMenu
		escreva("\nSelecione o tipo de conta bancária de 0 a 5: ")
		leia(opcao)
		limpa()
		
		se(opcao == 0){
		// Abertura código conta poupança
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
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
			escreva("Programa Finalizado!!")
		saldo=0.0
			pare
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
			escreva("   Tipo e operação: ",menu2[opcao],"\n")
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
			
			
		/*	
		senao se(opcao2 == 3){
			escreva("\n Qual o dia do seu 1º deposito? ")              // Realizou um crédito
			leia(data)
			escreva("\n Qual o valor depositado 1º deposito? ")
			leia(credito1)
			
			
			
			escreva("Seu dia de aniversário de poupança é:", diaAniversarioPoupanca)
			
			
			
			diaAniversarioPoupanca=data
			*/
		
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
			
			}
			escreva("\nLimite de movimentações diarios!!\n")
	}
		}
		}	
		
		
		
		
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
		senao se(opcao == 4){
			//codigo conta estudantil
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
			}
		//codigo SAIR
		senao se(opcao == 5){
			escreva("Programa Finalizado!!")
			
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
	}
	saldo=0
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
programa
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		cadeia menu2[4]={"Debito","Crédito","Saldo","Sair"}
		real saldoInicial=0.00, saldoFinal=0.00, debito=0.00, credito=0.00,saldo=0.00,emprestimoF=0.00,emprestimoS=0.00,emprestimo=0.00
		inteiro opcao = 0,data=0, movimentos=0,opcao2=0

		//Devolução de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao BNGM!\n")                //DEFINIR SE VAI USAR SILGA OU NOME
		escreva("-----------------------------\n")
		
		//Escopo do menu
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 6; x++){
			escreva(x," - ",menu[x],"\n")	
			}
		escreva("------------\n")	
				// Final do Menu//		
		escreva("\nSelecione o tipo de conta bancária de 0 a 5: ")
		leia(opcao)
		limpa()
		
		se(opcao == 0){
			//codigo conta poupança
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
		escreva("Saldo em conta de:R$", saldoInicial)

		//Escopo do menu
		para(inteiro y = 0; y <10; y++){           // quantidade de vezes que roda a pergunta
		
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 4; x++){
			escreva(x," - ",menu2[x],"\n")	
			}
		escreva("------------\n")	
		// Final do Menu
		// Pedido de opção de menu
		escreva("\nSelecione uma opção de 0 a 3: ")
		leia(opcao2)
		limpa() // limpa console

		//opções 2° menu
		
		se(opcao2 == 0){     //Debito

			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao2],"\n")
			escreva("-----------------------------\n")
			escreva("Seu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n")               // Item de complemento para informar que não tem saldo de emprestimo disponivel
			
			escreva("Escreva o valor a ser debitado: ")
			leia(debito)
			se(debito < 0){
				escreva("\nDigite um valor positivo\n")
				}
			senao se(saldo <= 0){
				escreva("\nSaldo insuficiente, faça um credito \n")
				}
			senao{
			saldo -= debito
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			}
		}
		senao se(opcao2 == 1){  //Credito
			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao],"\n")
			escreva("-----------------------------\n")
			escreva("Seu saldo de conta é: R$ ",saldo,"\n")
			
			
			escreva("Escreva o valor a ser creditado: ")
			leia(credito)
			se(credito < 0){
				escreva("\nDigite um valor positivo\n")
			}
			senao{
			saldo += credito
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
				}
			
			}
		
		senao se(opcao2 == 2){    //Verificar Saldo
			escreva("Seu saldo é de R$: ",saldo,"\n")  
			}
		senao se(opcao2 == 3){
			escreva("Programa Finalizado!!")
			pare
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
		
				
			}
			escreva("\nLimite de movimentações diarios!!\n")
		// FAZER CÓDIGO DE ATUALIZAÇÃO DO RENDIMENTO POUPANÇA
		
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
 * @POSICAO-CURSOR = 3071; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
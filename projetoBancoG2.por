programa
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		cadeia menu2[5]={"Debito","Credito","Emprestimo","Saldo","Sair"}
		inteiro opcao = 0
		real movimentos = 0.00, saldo=0.00, debito = 0.00, credito = 0.00, emprestimo
		real emprestimoF = 10000.00
		
		//Devolução de boas vindas
		escreva("-----------------------------\n")
		escreva("   Bem vindo ao Banco Midas!\n")
		escreva("-----------------------------\n")
		
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
		
		//Escopo do menu
		escreva("\n----Menu----\n") 
		para(inteiro x=0; x < 5; x++){
			escreva(x," - ",menu2[x],"\n")	
			}
		escreva("------------\n")	
		// Final do Menu
		// Pedido de opção de menu
		escreva("\nSelecione uma opção de 0 a 4: ")
		leia(opcao)
		limpa() // limpa console

		//opções 2° menu
		//para(inteiro y = 0; y > 11; y++){
		se(opcao == 0){     //Debito

			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao],"\n")
			escreva("-----------------------------\n")
			
			escreva("Escreva o valor a ser debitado: ")
			leia(debito)

			se(saldo <= 0){
				escreva("\nSaldo insuficiente, faça um credito \n")
				}
			senao{
			saldo -= debito
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			}
			
			}
		senao se(opcao == 1){  //Credito
			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao],"\n")
			escreva("-----------------------------\n")
			
			escreva("Escreva o valor a ser creditado: ")
			leia(credito)
			
			saldo += credito
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			}
		senao se(opcao == 2){    //Emprestimo
			escreva("-----------------------------\n")
			escreva("   Tipo e operação: ",menu2[opcao],"\n")
			escreva("-----------------------------\n")
			
			escreva("Escreva o valor de emprestimo: ")
			leia(emprestimo)
			
			saldo += emprestimo
			emprestimoF -= emprestimo
			movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			escreva("\n\nSeu saldo para emprestimo é de R$: ", emprestimoF)
			}
		senao se(opcao == 3){    //Verificar Saldo
			escreva("Seu saldo é de R$: ",saldo,"\n")  
			}
		senao se(opcao == 4){
			escreva("Programa Finalizado!!")
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Programa Finalizado!!\n")
			}
		
		//parada para movimenta
		se(movimentos > 10){
			escreva("Limite de movimentações diarios!!\n")
			escreva("ou\n")
			escreva("Saldo não pode ficar negativo!!")
				}		
			//}
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
 * @POSICAO-CURSOR = 3925; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
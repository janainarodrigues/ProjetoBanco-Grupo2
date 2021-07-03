programa //apague//
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		cadeia menu2[5]={"Debito","Credito","Emprestimo","Saldo","Voltar"}
		inteiro opcao = 0, movimento = 0
		inteiro opcao2 = 0
		real movimentos = 0.00, saldo=0.00, debito = 0.00, credito = 0.00, emprestimo
		real emprestimoF = 10000.00, emprestimoS = 0.00
		
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

		/*se(opcao == 0){
			//codigo conta poupança
		
			}
		senao se(opcao == 1){
			//codigo conta corrente
		
			}
		senao se(opcao == 2){
			//codigo conta especial
	
			}*/
		/*senao*/ se(opcao == 3){
			//codigo conta empresa
		escreva("-----------------------------\n")
		escreva("   Tipo de conta: ",menu[opcao],"\n")
		escreva("-----------------------------\n")
		
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
			escreva("Seu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n")
			
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
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n")
			
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
		senao se(opcao2 == 2){    //Emprestimo
			escreva("-----------------------------\n")
			escreva(" Tipo e operação: ",menu2[opcao],"\n")
			escreva("-----------------------------\n")
			escreva("Seu saldo de conta é: R$ ",saldo,"\n")
			escreva("\nSeu saldo para emprestimo é: R$ ",emprestimoF,"\n")
			
			escreva("Escreva o valor de emprestimo: ")
			leia(emprestimo)
			se(emprestimo < 0){
				escreva("\nDigite um valor positivo\n")
				}
			senao se(emprestimo <= 10000.00){
				saldo += emprestimo
				emprestimoF -= emprestimo
				emprestimoS += emprestimo
				movimentos++

			escreva("\nSeu saldo agora é de R$: ", saldo)
			escreva("\n\nSeu saldo para emprestimo é de R$: ", emprestimoF,"\n")
			escreva("\nSeu valor de emprestimo já solicitado é de R$: ", emprestimoS,"\n")
			}
			senao se(emprestimoS > 10000.00){
				escreva("Valor insuficiente para emprestimo")
				}senao se(emprestimoS >= 10000.01)	{
					escreva("Valor insuficiente para emprestimo")		
			}
			
		}
		senao se(opcao2 == 3){    //Verificar Saldo
			escreva("Seu saldo é de R$: ",saldo,"\n")  
			movimentos++
			}
		senao se(opcao2 == 4){
			escreva("-----------------------------\n")
			escreva("   Bem vindo ao Banco BNGM!\n")
			escreva("-----------------------------\n")
			pare
			}
		senao se(opcao2 > 4){
			escreva("Opção Inválida!!\n\n")
			escreva("Digite uma opção do menu!!\n")
			
			}
		
				
			}
			//se(movimento >= 9)
			//escreva("\nLimite de movimentações diarios!!\n")
			//pare
		}
		/*senao se(opcao == 4){
			//codigo conta estudantil
	
			}*/
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
 * @POSICAO-CURSOR = 4523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
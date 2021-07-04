programa 
{
	inclua biblioteca Util
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		cadeia menu2[5]={"Debito","Credito","Emprestimo","Saldo","Voltar"}
		inteiro opcao = 0, movimento = 0
		inteiro opcao2 = 0, conta
		real movimentos = 0.00, saldo=0.00, debito = 0.00, credito = 0.00, emprestimo
		real emprestimoF = 10000.00, emprestimoS = 0.00
		
		//Devolução de boas vindas
		escreva("-----------------------------------------\n")
		escreva(" Bem vindo ao Banco BNGM! -- Grupo 02 -- \n")
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
			se(debito < 0){
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
			se(credito < 0){
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
			
			se(emprestimo < 0){
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
			
			escreva("\nSeu saldo é de R$: ",saldo,"\n")  
			movimentos++
			}
		senao se(opcao2 == 4){
		escreva("-----------------------------------------\n")
		escreva(" Bem vindo ao Banco BNGM! -- Grupo 02 -- \n")
		escreva("-----------------------------------------\n")
			pare
			}
		senao{
			escreva("Opção Inválida!!\n\n")
			escreva("Escolha outra opção do menu!!\n")
			
			}
				
			se(movimentos > 9){
			escreva("\n\nLimite de movimentações diarios!!\n")
			escreva("\nVoltando ao menu principal!!\n")
			pare
			}
		
		}
			
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
			escreva("Escolha outra opção do menu!!\n")
			
			}	
			saldo = 0	
			movimentos = 0	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
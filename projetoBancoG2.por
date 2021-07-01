programa
{
	
	funcao inicio()
	{	//Declaração de Variavel
		cadeia menu[6]={"Poupanca","Corrente","Especial","Empresa","Estudantil","Sair"}
		inteiro opcao = 0
		real movimentos = 0, saldo=0

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

		se(movimentos >= 10){
			escreva("Limite de movimentações diarios!!")
				}
			senao se(saldo < 0){
				escreva("Saldo não pode ficar negativo!!")
				}
		
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
 * @POSICAO-CURSOR = 1483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */
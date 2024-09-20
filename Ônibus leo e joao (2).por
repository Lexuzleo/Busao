programa
{
	inclua biblioteca Util-->u
	inclua biblioteca Graficos-->g
	inclua biblioteca Teclado-->t
	inclua biblioteca Mouse-->m
	logico finalizar=falso, pt1=verdadeiro, pt2=falso, pt3=falso, pt4=falso, final=falso, onoff=verdadeiro, ptt1=falso, ptt2=falso, ptt3=falso, ptt4=falso
	inteiro grama=g.criar_cor(107, 142, 35),asfalto=g.criar_cor(35, 35, 35), casa1=g.criar_cor(255, 165, 0), casa2=g.criar_cor(70, 130, 180)
	inteiro casa3=g.criar_cor(106, 90, 205), casa4=g.criar_cor(220, 220, 220), casa5=g.criar_cor(0, 255, 255), casa6=g.criar_cor(204, 119, 34)
	inteiro casa7=g.criar_cor(251, 236, 93), QUADRADO=g.criar_cor(40, 40, 40), arvore=g.criar_cor(0, 100, 0)
	inteiro caminho=1, larg=0, altu=0, fim=0, abrir=0, pessoas=0, pes_saidas=0, ponto1=0, ponto2=0, ponto3=0, ponto4=0, total=0
	real x=150, y=125
	inteiro comenu=0
	funcao controle()
	{
		se(t.tecla_pressionada(t.TECLA_ESC))
		{
			finalizar=verdadeiro
		}
	}
	funcao map()
	{
		//grama
		g.definir_cor(grama)
		g.desenhar_retangulo(25, 25, 1150, 750, falso, verdadeiro)
		//estrada
		g.definir_cor(asfalto)
		g.desenhar_retangulo(50, 50, 1100, 125, verdadeiro, verdadeiro)
		g.definir_cor(asfalto)
		g.desenhar_retangulo(950, 50, 125, 300, verdadeiro, verdadeiro)
		g.definir_cor(asfalto)
		g.desenhar_retangulo(25, 330, 1150, 125, falso, verdadeiro)
		g.definir_cor(asfalto)
		g.desenhar_retangulo(100, 375, 125, 300, verdadeiro, verdadeiro)
		g.definir_cor(asfalto)
		g.desenhar_retangulo(50, 600, 1100, 125, verdadeiro, verdadeiro)
		//casas
		//casas1
		g.definir_cor(casa1)
		g.desenhar_retangulo(75, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa2)
		g.desenhar_retangulo(200, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa3)
		g.desenhar_retangulo(325, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa4)
		g.desenhar_retangulo(450, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa5)
		g.desenhar_retangulo(575, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa6)
		g.desenhar_retangulo(700, 200, 100, 100, falso, verdadeiro)
		g.definir_cor(casa7)
		g.desenhar_retangulo(825, 200, 100, 100, falso, verdadeiro)
		//casas2
		g.definir_cor(casa6)
		g.desenhar_retangulo(250, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa5)
		g.desenhar_retangulo(375, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa2)
		g.desenhar_retangulo(500, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa1)
		g.desenhar_retangulo(625, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa7)
		g.desenhar_retangulo(750, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa3)
		g.desenhar_retangulo(875, 475, 100, 100, falso, verdadeiro)
		g.definir_cor(casa4)
		g.desenhar_retangulo(1000, 475, 100, 100, falso, verdadeiro)
		//saida do Ônibus
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(50, 50, 100, 125, falso, verdadeiro)
		//paradas1
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(400, 160, 60, 30, falso, verdadeiro)
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(800, 160, 60, 30, falso, verdadeiro)
		/*paradas2
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(300, 320, 60, 30, falso, verdadeiro)
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(600, 320, 60, 30, falso, verdadeiro)*/
		//paradas3
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(400, 710, 60, 30, falso, verdadeiro)
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_retangulo(800, 710, 60, 30, falso, verdadeiro)
		//arvore
		g.definir_cor(arvore)
		g.desenhar_elipse(30, 295, 35,31 , verdadeiro)
		g.definir_cor(arvore)
		g.desenhar_elipse(30, 458, 35,31 , verdadeiro)
		g.definir_cor(arvore)
		g.desenhar_elipse(1130, 295, 35,31 , verdadeiro)
		g.definir_cor(arvore)
		g.desenhar_elipse(1130, 458, 35,31 , verdadeiro)
		
	}
	funcao andar_e_parar()
	{
		se(pt1==verdadeiro)
		{
			/*enquanto(x<400)
			{
				larg=50
				altu=20
				x=x+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}*/
			u.aguarde(1000)
			g.minimizar_janela()
			ptt1=verdadeiro
			menu()
			ponto1=ponto1+total
		}
		se(pt2==verdadeiro)
		{
			/*enquanto(x<800)
			{
				larg=50
				altu=20
				x=x+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}*/
			u.aguarde(1000)
			g.minimizar_janela()
			ptt2=verdadeiro
			menu()
			ponto2=ponto2+total
		}
		se(pt3==verdadeiro)
		{
			x=800
			/*enquanto(x<975)
			{
				larg=50
				altu=20
				x=x+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}
			enquanto(y<350)
			{
				larg=20
				altu=50
				y=y+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}
			enquanto(x>125)
			{
				larg=50
				altu=20
				x=x-1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}
			enquanto(y<670)
			{
				larg=20
				altu=50
				y=y+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}
			enquanto(x<400)
			{
				larg=50
				altu=20
				x=x+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}*/
			u.aguarde(1000)
			g.minimizar_janela()
			ptt3=verdadeiro
			menu()
			ponto3=ponto3+total
		}
		se(pt4==verdadeiro)
		{
			/*enquanto(x<800)
			{
				larg=50
				altu=20
				x=x+1
				map()
				desenho()
				controle()
				g.renderizar()
				u.aguarde(10)
			}*/
			u.aguarde(1000)
			g.minimizar_janela()
			ptt4=verdadeiro
			menu()
			ponto4=ponto4+pessoas
		}
	}
	funcao menu()
	{
		total=0
		total=total+ponto1+ponto2+ponto3+ponto4
		limpa()
		escreva("\t\t\t--MENU--")
		u.aguarde(600)
		escreva("\n\nentradas-->1\nsaidas-->2\nmostrar entradas e saidas de cada ponto-->3\ncontinuar trajeto-->4\nqual? ")
		leia(comenu)
		selecao()
	}
	funcao entradas()
	{
		escreva("Quantas pessoas entraram? ")
		u.aguarde(600)
		leia(pessoas)
		total=total+pessoas
		u.aguarde(600)
	}
	funcao saidas()
	{
		escreva("Quantas pessoas Sairam? ")
		u.aguarde(600)
		leia(pes_saidas)
		total=total-pes_saidas
		se(pessoas<=0)
		{
			pessoas=0
		}
		se(ptt1==verdadeiro e ptt2==falso)
		{
			ponto1=0
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==falso)
		{
			ponto2=0
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==verdadeiro e ptt4==falso)
		{
			ponto3=0
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==verdadeiro e ptt4==verdadeiro)
		{
			ponto4=0
		}
	}
	funcao mostrar()
	{
		se(ptt1==verdadeiro e ptt2==falso)
		{
			escreva("Ponto 1: ", ponto1)
			escreva("\n\nTotal: ", total)
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==falso)
		{
			escreva("Ponto 1: ", ponto1)
			escreva("\nPonto 2: ", ponto2)
			escreva("\n\nTotal: ", total)
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==verdadeiro e ptt4==falso)
		{
			escreva("Ponto 1: ", ponto1)
			escreva("\nPonto 2: ", ponto2)
			escreva("\nPonto 3: ", ponto3)
			escreva("\n\nTotal: ", total)
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==verdadeiro e ptt4==verdadeiro)
		{
			escreva("Ponto 1: ", ponto1)
			escreva("\nPonto 2: ", ponto2)
			escreva("\nPonto 3: ", ponto3)
			escreva("\nPonto 4: ", ponto4)
			escreva("\n\nTotal: ", total)
		}
	}
	funcao continue()
	{
		se(ptt1==verdadeiro e ptt2==falso)
		{
			pt2=verdadeiro
			x=400
			pt1=falso
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==falso)
		{
			pt3=verdadeiro
			x=400
			pt2=falso
		}
		se(ptt1==verdadeiro e ptt2==verdadeiro e ptt3==verdadeiro e ptt4==falso)
		{
			pt4=verdadeiro
			x=400
			pt3=falso
		}
		g.restaurar_janela()
	}
	funcao selecao()
	{
		limpa()
		se(comenu==1)
		{
			entradas()
		}
		senao se(comenu==2)
		{
			saidas()
		}
		senao se(comenu==3)
		{
			mostrar()
		}
		senao se(comenu==4)
		{
			continue()
		}
		
	}
	funcao tela()
	{
		g.definir_opacidade(170)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_retangulo(25, 25, 1150, 750, verdadeiro, verdadeiro)
	}
	funcao desenho()
	{
		g.definir_cor(g.COR_AMARELO)
		g.desenhar_retangulo(x, y, larg, altu, falso, verdadeiro)
	}
	funcao inicio()
	{
		g.iniciar_modo_grafico(onoff)
		g.definir_dimensoes_janela(1200, 800)
		g.definir_titulo_janela("Caminho do Ônibus")
		m.ocultar_cursor()
		enquanto(finalizar==falso)
		{
			se(abrir<2)
			{
				andar_e_parar()
				controle()
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoas, 11, 52, 7}-{pes_saidas, 11, 63, 10}-{ponto1, 11, 77, 6}-{ponto2, 11, 87, 6}-{ponto3, 11, 97, 6}-{total, 11, 117, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
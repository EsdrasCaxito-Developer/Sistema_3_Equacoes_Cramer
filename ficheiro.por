programa
{	
	inclua biblioteca Util --> u
	
	funcao inteiro somaDiagonalDeterminante(inteiro matriz[][]){
		inteiro d1 = 0, d2 = 0, sm = 0, aux[2][3]
		
		para(inteiro i=0; i<3; i++){
			para(inteiro j=0; j< 3; j++){
				se(i <= 1){
					aux[i][j] = matriz[i][j]
				}
			}
		}

		d1 = (matriz[0][0] * matriz[1][1] * matriz[2][2]) + (matriz[1][0] * matriz[2][1] * aux[0][2]) + (matriz[2][0] * aux[0][1] * aux[1][2])
		d2 = (matriz[0][2] * matriz[1][1] * matriz[2][0]) + (matriz[1][2] * matriz[2][1] * aux[0][0]) + (matriz[2][2] * aux[0][1] * aux[1][0])	
		sm = d1 - d2  
	
		retorne sm
		
	}
	
	funcao mostrarMatriz(inteiro matriz[][]){
		para(inteiro i=0; i<3; i++){
			escreva("\n+-------+-------+-------+\n")
			para(inteiro j=0; j< 3; j++){
		
				escreva("| ", matriz[i][j], "\t")
			}
			escreva("|\n")
		}
		escreva("\n+-------+-------+-------+\n")
	}
	funcao inicio ()
	{
		inteiro matriz[3][4], a[3][3], a1[3][3], a2[3][3], a3[3][3]
		real x = 0.0, y = 0.0, z = 0.0
		
		para(inteiro i=0; i<3; i++){
			para(inteiro j=0; j<4; j++){
				//escreva("\nA[", i+1, j+1, "]: ")
				//leia(matriz[i][j])
				
				escreva("[", i+1, ",", j+1,"]: ")
				leia(matriz[i][j])
				se(j<3){
					a[i][j] = matriz[i][j]
					a1[i][j] = matriz[i][j]
					a2[i][j] = matriz[i][j]
					a3[i][j] = matriz[i][j]
				}
			}
		}
		limpa() 
		
		a1[0][0] = matriz[0][3]
		a1[1][0] = matriz[1][3]
		a1[2][0] = matriz[2][3]
	
		a2[0][1] = matriz[0][3]
		a2[1][1] = matriz[1][3]
		a2[2][1] = matriz[2][3]
		
		a3[0][2] = matriz[0][3]
		a3[1][2] = matriz[1][3]
		a3[2][2] = matriz[2][3]
		
		escreva("MATRIZ AMPLIADA")
		para(inteiro i=0; i<3; i++){
			escreva("\n+-------+-------+-------+-------+\n")
			para(inteiro j=0; j<4; j++){
				escreva("| ", matriz[i][j], "\t")
			}
			escreva("|\n")
		}
		escreva("\n+-------+-------+-------+-------+\n")
		
		x = somaDiagonalDeterminante(a1) / somaDiagonalDeterminante(a)
		y = somaDiagonalDeterminante(a2) / somaDiagonalDeterminante(a)
		z = somaDiagonalDeterminante(a3) / somaDiagonalDeterminante(a)
		
		escreva("\nMATRIZ A")
		mostrarMatriz(a)
		escreva("Determinante: ", somaDiagonalDeterminante(a))
		
		escreva("\n\nMATRIZ A1")
		mostrarMatriz(a1)
		escreva("Determinante: ", somaDiagonalDeterminante(a1))
				
		escreva("\n\nMATRIZ A2")
		mostrarMatriz(a2)
		escreva("Determinante: ", somaDiagonalDeterminante(a2))
				
		escreva("\n\nMATRIZ A3")
		mostrarMatriz(a3)
		escreva("Determinante: ", somaDiagonalDeterminante(a3))
		
		escreva("\n\nX = ", x, "\nY = ", y, "\nZ = ", z)	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
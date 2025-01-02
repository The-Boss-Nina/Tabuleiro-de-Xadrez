.globl main
main:
	li $a0, -1	# contador de linha
	li $a1, 0	# contador de coluna
	li $a2, 0	# contador de pontos
	
	la $a3, $board		# aponta para o inicio da lista de linhas (array 2d, matriz)
	subi $a3, $a3, 4	# tira 4 para ser adicionado a cada passagem de laco
.globl main
main:
	li $a0, -1	# contador de linha
	li $a1, 0	# contador de coluna
	li $a2, 0	# contador de pontos
	
	la $a3, $board		# aponta para o inicio da lista de linhas (array 2d, matriz)
	subi $a3, $a3, 4	# tira 4 para ser adicionado a cada passagem de laco

loopline:
    addi $a0, $a0, 1    # incrementa o contador de linha
    bgt $a0, 7, end     # finaliza o programa ao completar as linhas
    li $a1, 0           # reseta o contador de colunas
    addi $a3, $a3, 4    # ajusta o ponteiro para a próxima linha
    ld $t1, ($a3)       # carrega o endereço da linha atual
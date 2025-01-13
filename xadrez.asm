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

loopcolumn:
    bgt $a1, 7, loopline  # volta ao loop de linha se as colunas forem completadas
        
    ld $s0, ($t1)         # carrega o endereço do elemento atual
    ld $t3, ($s0)         # obtém o valor do elemento

    la $t5, $peao        # verifica se o valor é um peão
    ld $t6, ($t5)
    beq $t3, $t6, peao
    la $t5, $cavalo      # verifica se o valor é um cavalo
    ld $t6, ($t5)
    beq $t3, $t6, cavalo
    la $t5, $bispo       # verifica se o valor é um bispo
    ld $t6, ($t5)
    beq $t3, $t6, bispo
    la $t5, $torre       # verifica se o valor é uma torre
    ld $t6, ($t5)
    beq $t3, $t6, torre
    la $t5, $rainha      # verifica se o valor é uma rainha
    ld $t6, ($t5)
    beq $t3, $t6, rainha
    la $t5, $rei         # verifica se o valor é um rei
    ld $t6, ($t5)
    beq $t3, $t6, rei
    la $t5, $branco      # verifica se o valor é branco
    ld $t6, ($t5)
    bne $t3, $t6, error  # se não for branco, é erro
    j nextcolumn

peao:
    bne $t4, $t7, error # valida a segunda parte
    addi $a2, $a2, 1
    j nextcolumn
cavalo:
    bne $t4, $t7, error
    addi $a2, $a2, 3
    j nextcolumn
bispo:
    bne $t4, $t7, error
    addi $a2, $a2, 3
    j nextcolumn
torre:
    bne $t4, $t7, error
    addi $a2, $a2, 5
    j nextcolumn
rainha:
    bne $t4, $t7, error
    addi $a2, $a2, 10
    j nextcolumn
rei:
    bne $t4, $t7, error
    addi $a2, $a2, 50
    j nextcolumn

    nextcolumn:
    addi $t1, $t1, 4  # move para o próximo elemento
    addi $a1, $a1, 1  # incrementa o contador de colunas
    j loopcolumn

    end:
    la $a0, ($a2)
    li $v0, 1         # imprime
    syscall
    li $v0, 10        # termina
    syscall
.globl print
	.text

print:
	mv t0, a0 #insere o valor do primeiro endere�o de mem�ria do vetor no registrador t0
	mv t1, zero #insere o valor zero no registrador t1
	
for:
	#condicao
	bge t1, a1, fim#verifica se t1 >= a1, caso seja verdadeiro vai para fim_func
	#la�o
	li a7, 1 #chamada de sistema de c�digo 1 (printar inteiro)
	lw a0, (t0) #carrega o valor do t0 e insere em a0
	ecall 
	
	li a7, 11 #chamada de sistema de c�digo 11 (printa um caracter)
	li a0, 32 #coloca o codigo de espa�o para ser impresso 
	ecall 
	#incrementar
	addi t0, t0, 4
	addi t1, t1, 1
	j for

fim:
	ret
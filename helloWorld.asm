.data
msg: .asciiz "Olá Mundo"
.text
li $v0,4 #Imprime uma string
la $a0,msg #Recebe a variavel msg
syscall
li $v0,10 #Prepara para finalizar 
syscall
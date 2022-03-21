.data

.macro finalizarprograma
   li $v0, 10 # Prepara programa para ser finalizado
   syscall # Executa
.end_macro

.macro printf (%str)
   .data
    msg: .asciiz %str
   .text
    li $v0, 4  # Preparando o processador para imprimir uma string
    la $a0, msg #a0 - msg
    syscall # Executa

.end_macro

.text
.globl principal

principal:
printf("Olá Mundo!\n")
finalizarprograma
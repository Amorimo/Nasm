 global _start

    section .text
    _start:
        mov rax,1                   ;Prepara o sistema para fazer a escrita de um texto
        mov rdi,1                   ;Preparar a saída do texto na tela
        mov rsi,mensagem            ;Imprimir ou exibir mensagem na tela
        mov rdx,13                  ;Quantidade de caracteres
        syscall                     ;Chama o sistema para preprar a saída
        mov rax,60                  ;Chamada para a saída do sistema
        xor rdi,rdi                 ;Executar a saída do sistema
        syscall                     ;Invocar o sistema operacional para fechar

    section .data
    mensagem:db 'Hello World',10    ;O valor 10 representa a Quebra de linha     

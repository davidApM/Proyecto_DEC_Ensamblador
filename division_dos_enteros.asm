section .data
    numero1 dd 726
    numero2 dd 3
    resultado times 11 db 0
    
    mensaje1 db 'Proyecto de: David Alfredo Parada Mendoza ', 0xA, 0xD
    mensajeLongitud1 equ $ - mensaje1
    
    mensaje2 db 'Materia: DEC UES', 0xA, 0xD
    mensajeLongitud2 equ $ - mensaje2
    
    mensaje db 'El resultado de la Divicion es: ', 0
    mensajeLongitud equ $ - mensaje

section .text
    global _start
    
; Macro que nos ayuda para ahoorar codigo y recibe 4 parametros 
%macro llamar_al_sistema 4
    mov eax, %1
    mov ebx, %2
    mov ecx, %3
    mov edx, %4
    int 0x80
%endmacro

; Etiqueta para la conversión a cadena
convertir_a_cadena:
    mov ebx, 10
    mov ecx, resultado + 10 ; Puntero al final del espacio reservado
    mov byte [ecx], 0 ; Null-terminator para la cadena
    dec ecx
    

    
while:
    xor edx, edx
    div ebx        ; Divide eax por 10 (cociente en eax, resto en edx)
    add dl, '0'    ; Convertir resto a ASCII
    mov [ecx], dl  ; Almacenar dígito
    dec ecx        ; Mover puntero hacia atrás
    test eax, eax
    jnz while  ; Repetir hasta que eax sea cero
    inc ecx        ; Mover puntero al primer dígito de la cadena resultante
    ret

_start:
    ; Division 
    mov eax, [numero1]
    mov ebx, [numero2]
    div ebx
    mov [resultado], eax

   ; Mostrar mensaje de bienvenida 
    llamar_al_sistema 4, 1, mensaje1, mensajeLongitud1
    
    ; Mostrar mensaje de bienvenida 
    llamar_al_sistema 4, 1, mensaje2, mensajeLongitud2

    ; Mostrar mensaje inicial
    llamar_al_sistema 4, 1, mensaje, mensajeLongitud

    ; Convertir resultado a cadena
    mov eax, [resultado]
    call convertir_a_cadena

    ; Calcular longitud de la cadena resultante
    mov edi, resultado + 10; mueve el valor de resultado + 10 a edi
    sub edi, ecx           ; resta edi - ecx    
    mov edx, edi           ; mueve el valor obtenido antriormente a edx 

    ; Mostrar resultado
    llamar_al_sistema 4, 1, ecx, edx ; ecx ya apunta al inicio de la cadena

    ; Salir del programa
    llamar_al_sistema 1, 0, 0, 0
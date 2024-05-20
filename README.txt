README

Descripción del Proyecto

Este proyecto contiene tres ejercicios de programación en ensamblador que abordan operaciones aritméticas básicas utilizando diferentes tamaños de registros. Los ejercicios están diseñados para familiarizar a los estudiantes con la manipulación de registros de diferentes tamaños (16 bits, 8 bits y 32 bits) en operaciones de resta, multiplicación y división, respectivamente.

Cada ejercicio se encuentra en un archivo separado y sigue una estructura similar para facilitar la comprensión y el aprendizaje. A continuación, se detalla el propósito de cada ejercicio y cómo ejecutarlos.

Contenido del Repositorio

1. Resta de tres enteros
2. Multiplicación de dos enteros
3. División de dos enteros

Ejercicio 1: Resta de Tres Enteros

Archivo: resta_tres_enteros.asm

Propósito
Este programa resta tres números enteros utilizando únicamente registros de 16 bits. El objetivo es entender cómo manejar registros de 16 bits y realizar operaciones aritméticas básicas con ellos.

Descripción
- Se cargan tres enteros en registros de 16 bits.
- Se realizan las operaciones de resta sucesivas.
- El resultado de la resta se almacena en un registro de 16 bits.

Instrucciones de Ejecución
1. Ensamble el archivo de código fuente utilizando un ensamblador como NASM:
   
   nasm -f elf32 resta_tres_enteros.asm -o resta_tres_enteros.o
   
2. Enlace el archivo objeto utilizando un enlazador como ld:
   
   ld -m elf_i386 resta_tres_enteros.o -o resta_tres_enteros
   
3. Ejecute el programa:
   
   ./resta_tres_enteros
   

Ejercicio 2: Multiplicación de Dos Enteros

Archivo:multiplicacion_dos_enteros.asm

Propósito
Este programa multiplica dos números enteros utilizando registros de 8 bits. El objetivo es aprender a manejar operaciones de multiplicación con registros más pequeños y optimizar el uso del espacio de los registros.

Descripción
- Se cargan dos enteros en registros de 8 bits.
- Se realiza la operación de multiplicación.
- El resultado, que puede ser de hasta 16 bits, se almacena en registros adecuados para preservar la precisión.

Instrucciones de Ejecución
1. Ensamble el archivo de código fuente utilizando NASM:
   
   nasm -f elf32 multiplicacion_dos_enteros.asm -o multiplicacion_dos_enteros.o
   
2. Enlace el archivo objeto utilizando ld:
   
   ld -m elf_i386 multiplicacion_dos_enteros.o -o multiplicacion_dos_enteros
   
3. Ejecute el programa:
   
   ./multiplicacion_dos_enteros
   

Ejercicio 3: División de Dos Enteros

Archivo: division_dos_enteros.asm

Propósito
Este programa divide dos números enteros utilizando registros de 32 bits. El objetivo es comprender cómo realizar operaciones de división utilizando registros de tamaño más grande y gestionar adecuadamente el cociente y el residuo.

Descripción
- Se cargan dos enteros en registros de 32 bits.
- Se realiza la operación de división.
- El cociente y el residuo se almacenan en registros específicos.

Instrucciones de Ejecución
1. Ensamble el archivo de código fuente utilizando NASM:
  
   nasm -f elf32 division_dos_enteros.asm -o division_dos_enteros.o
   
2. Enlace el archivo objeto utilizando ld:
   
   ld -m elf_i386 division_dos_enteros.o -o division_dos_enteros
   
3. Ejecute el programa:
   
   ./division_dos_enteros
   
#David Mendoza - 2024
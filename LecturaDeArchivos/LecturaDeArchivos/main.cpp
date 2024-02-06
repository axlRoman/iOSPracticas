//
//  main.cpp
//  LecturaDeArchivos
//
//  Created by Usuario invitado on 06/02/24.
//
// ejemplo1.c: Muestra un fichero dos veces.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAX_PATH_LENGTH 256

int main()
{
    char file_path[MAX_PATH_LENGTH];
    FILE *fichero;

    printf("Ingrese la ruta o nombre del archivo: ");
    if (fgets(file_path, sizeof(file_path), stdin) == NULL)
    {
        perror("Error al leer la entrada");
        exit(EXIT_FAILURE);
    }

    // Eliminar el carácter de nueva línea al final de la cadena
    if (file_path[strlen(file_path) - 1] == '\n')
    {
        file_path[strlen(file_path) - 1] = '\0';
    }

    if ((fichero = fopen(file_path, "r")) == NULL)
    {
        perror("Error al abrir el archivo");
        exit(EXIT_FAILURE);
    }

    int c;
    while ((c = fgetc(fichero)) != EOF)
    {
        fputc(c, stdout);
    }

    fclose(fichero);

    return 0;
}


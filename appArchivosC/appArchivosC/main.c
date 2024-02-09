//
//  main.c
//  appArchivosC
//
//  Created by Usuario invitado on 08/02/24.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    FILE *archivo;
    
    if ( (archivo = fopen("prueba.txt", "w+t")) == NULL)
        exit(1);
    
    fputs("ESTOY MUY EMOCIONADO CON LOS ARCHIVOS", archivo);
    fputs("YA QUIERO PONERME A LEER LOS DOCUMENTOS QUE OSWI ME RECOMIENDA", archivo);
    
    fclose(archivo);
    
    printf("adios, DONDE QUEDA GUARDADO EL ARCHIVO CREADO Y LA APLICACION");
    return 0;
}

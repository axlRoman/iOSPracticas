// ejemplo1.c: Muestra un fichero dos veces.
#include <stdio.h>

int main()
{
   FILE *fichero;

   fichero = fopen("TABLA DE SIMBOLOS.txt", "r");
   while(!feof(fichero)) fputc(fgetc(fichero), stdout);
   rewind(fichero);
   while(!feof(fichero)) fputc(fgetc(fichero), stdout);
   fclose(fichero);
   getchar();
   return 0;
}

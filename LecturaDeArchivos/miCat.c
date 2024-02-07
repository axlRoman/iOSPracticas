// ejemplo1.c: Muestra un fichero dos veces.
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
   FILE *fichero;

   printf("%s",argv[0]);
   if( (fichero = fopen(argv[1], "r")) == NULL)
   {
	puts("E R R O R, Archivo no encontrado");
	exit(1);	
   }
   

   char buffer[255];
   int i = 0;
   while(!feof(fichero)) 
   {
	fgets(buffer,255,fichero);
	printf("%d - %s \n",i++,buffer);
   }
   fclose(fichero);
   return 0;
}

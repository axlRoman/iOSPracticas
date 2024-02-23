//
//  main.m
//  appPunto
//
//  Created by Axel Roman on 20/02/24.
//

#import <Foundation/Foundation.h>
#import "Punto.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"APLICACION PUNTOS EN COORDENADAS CARTECIANAS");
        //Punto *punto1 = [[Punto alloc]init];
        Punto *punto1 = [Punto new];
        Punto *punto2 = [Punto new];
        int x1,y1,x2,y2;
        NSLog(@"X1 = ");
        scanf("%d",&x1);
        NSLog(@"Y1 = ");
        scanf("%d",&y1);
        NSLog(@"X2 = ");
        scanf("%d",&x2);
        NSLog(@"Y2 = ");
        scanf("%d",&y2);
        
        [punto1 setX:x1];
//        punto1.x = x1;
//        punto1->x = x1; NO SE PUEDEN ACCEDER A LOS ATRIBUTOS, ESTOS SON PROTEGIDOS
        punto1.y = y1;
        
        [punto2 setX:x2 :y2];
        
        //DEMOSTRAR EL FUNCIONAMIENTO DEL GETTER
        //long int x = punto1.x;
        
        Punto *pResul = [Punto new];
        
        pResul = [Punto sumar:punto1 con:punto2];
        NSLog(@"Suma: X = %ld, Y = %ld",[pResul x], pResul.y);
        
        NSLog(@"USANDO OBJETO IMPLICITO");
        Punto *pResul2 = [punto1 sumar:punto2];
        NSLog(@"Suma: X =%ld, Y =%ld", pResul2.x, pResul2.y);
        
        //USAR EL METODO QUE RECIBE PARAMTETROS VARIABLES
        Punto *suma4Puntos = [Punto new];
        suma4Puntos = [Punto sumar:4, punto1, punto2, pResul, pResul2];
        NSLog(@"Suma de 4 puntos: X =%ld, Y =%ld", suma4Puntos.x, suma4Puntos.y);
        
        NSString *cadena = [Punto sistema];
        NSLog(@"Cadena de la clase: %@",cadena);
        
        NSInteger nPuntos = [Punto numPuntos];
        NSLog(@"Puntos Creados :%ld", nPuntos);
        
        //AGREGAR CALCULAR DISTANCIA
        CGFloat distancia  = [punto1 calcularDistancia:punto2];
        NSLog(@"Distancia de %@ hasta %@ = %0.2f", punto1,punto2,distancia);
        
        //INVESTIGAR LAS PROPIEDADES DE ACCESO EN LAS CLASES OBJECTIVE-C
        //PROTECTED, PRIVATE, ETC...

    }
    return 0;
}

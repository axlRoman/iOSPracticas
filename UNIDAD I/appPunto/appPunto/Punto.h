//
//  Punto.h
//  appPunto
//
//  Created by Axel Roman on 20/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Punto : NSObject
{
    //LOS ATRIBUTOS POR DEFAULT SON PRIVADOS
    NSInteger x;
    NSInteger y;
}
// + INDICA METODO DE CLASE
+(NSString *) sistema;
+(NSInteger) numPuntos;

// - INDICA METODO DE INSTANCIA
-init; //INICIALIZADOR O CONSTRUCTOR
-(NSInteger)x; //PROPIEDAD getter, se puede llamar igual que el atributo
-(void) setX:(NSInteger)paramX;
-(void) setX:(NSInteger)paramX yY:(NSInteger)paramY;
-(void) setX:(NSInteger)paramX incrementar:(NSInteger)paramSumar;

-(NSInteger)y;
-(void) setY:(NSInteger)paramY;
-(void) setY:(NSInteger)paramY yX:(NSInteger)paramX;
-(void) setY:(NSInteger)paramY incrementar:(NSInteger)paramSuman;

//DEFINIR EL PROTOTIPO O FIRMA PARA EL METODO SUMAR 2PUNTOS
//-(Punto *)sumarPunto:(Punto *)otroPunto;
//metodo de clase
+(Punto *)sumar:(Punto *)p_1 con:(Punto *)p_2;

//METODO DE INSTANCIA, UTILIZANDO POO, TAMBIEN CONOCIDO COMO OBJETO BLANCO O IMPLICITO
-(Punto *) sumar:(Punto *)p;
//SUMA DE VARIOS PUNTOS, UTULIZANDO PARAMETROS VARIABLES
+(Punto *) sumar:(NSInteger) n, ...;

@end

NS_ASSUME_NONNULL_END

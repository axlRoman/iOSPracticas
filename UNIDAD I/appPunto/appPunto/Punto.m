//
//  Punto.m
//  appPunto
//
//  Created by Axel Roman on 20/02/24.
//

#import "Punto.h"

@implementation Punto
static NSInteger nPuntos = 0;
+(NSString *) sistema{
    return @"SISTEMA CARTESIANO";
}
+(NSInteger) numPuntos{
    return nPuntos;
}
// -(id) init { }
-init{
    //self = this //super es llamar al padre
    if((self = [super init]))
        nPuntos++;
    return self;
}

-(NSInteger)x {
    return x;
}
-(void)setX:(NSInteger)paramX{
    x = paramX;
}
-(void)setX:(NSInteger)paramX incrementar:(NSInteger)paramSumar{
    x = paramX + paramSumar;
}

-(NSInteger)y{
    return y;
}
-(void)setY:(NSInteger)paramY{
    y = paramY;
}
-(void)setY:(NSInteger)paramY incrementar:(NSInteger)paramSumar{
    y = paramY + paramSumar;
}

//inicializar los dos atributos
-(void)setX:(NSInteger)paramX :(NSInteger)paramY{
    x = paramX;
    y = paramY;
}

-(void)setY:(NSInteger)paramY :(NSInteger)paramX{
    y = paramY;
    x = paramX;
}

+(Punto *)sumar:(Punto *)p_1 con:(Punto *)p_2{
    //Punto *aux = [[Punto alloc]init];
    Punto *aux = [Punto new];
    aux->x = [p_1 x] + [p_2 x];
    aux->y = [p_1 y] + [p_2 y];
    return aux;
}

-(Punto *) sumar:(Punto *)p{
    Punto *aux = [Punto new];
    aux->x = [self x] + [p x];
    aux->y = [self y] + [p y];
    return aux;
}

//SUMAR VARIOS PUNTOS, UTILIZAR PARAMETROS VARIABLES 
+(Punto *) sumar:(NSInteger) n, ...{
    Punto *aux = [Punto new];
    va_list parametros;
    va_start(parametros, n);
    Punto *p;
    while(n-- > 0){
        p = va_arg(parametros, Punto *);
        aux->x += p->x;
        aux->y += p->y;
    }
    va_end(parametros);
    return aux;
}

-(double)calcularDistancia:(Punto *)otroPunto{
    NSInteger calX = self.x - otroPunto.x;
    NSInteger calY = self.y - otroPunto.y;
    return sqrt(calX * calX + calY * calY);
}

@end

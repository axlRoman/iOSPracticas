//
//  Matematicas.m
//  appMatematicas
//
//  Created by Usuario invitado on 15/02/24.
//

#import "Matematicas.h"

@implementation Matematicas

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

- (void) multiplyA:(NSNumber *)a withB:(NSNumber *)b yregresaR:(NSNumber *)resul{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    resul = [NSNumber numberWithFloat:product];
}

- (void) multiplyA_:(NSNumber *)a withB:(NSNumber *)b yregresaR:(double *)resultado{
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    *resultado = number1 * number2;
}
//TAREA
//IMPLEMENTAR LAS OPERACIONES ARITMETICAS BASICAS:SUMA, RESTA, DIVISION Y RESIDUO


//IMPLEMENTAR DOS METODOS PARA CALCULAR EL FACTORIAL
//DE UN NUMERO ENTERO VERSION ITERATIVA Y VERSION RECURSIVA
-(double)factorialI:(double)n{
    double resultado = 1;
    if(n==0 || n==1)
        return resultado;
    else
        for(int i=2; i<=n; i++)
            resultado *=i;
    return resultado;
}

-(double)factorialR:(double)n{
    double resultado = 1;
    if(n==0 || n==1)
        return 1;
    else
        return n * [self factorialR:(n-1)];
}

-(BOOL)esPrimo:(int)n{
    if(n%n==1 && n%1==0)
        return YES;
    return NO;
}

//IMPLEMENTAR UNA CALCULADORA BASICA, LA APP DEBE SER INTERACTIVA
//MOSTRANDO UN MENÚ PARA QUE EL USUARIO SELECCIONE LA OPCION

@end

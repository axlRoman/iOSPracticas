//
//  Matematicas.m
//  appMatematicas
//
//  Created by Usuario invitado on 15/02/24.
//

#import "Matematicas.h"
//#import <math.h>
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
    int div=2;
    while(div<n){
        if(n%div)
            return NO;
        div++;
    }
    return YES;
}

//IMPLEMENTAR UNA CALCULADORA BASICA, LA APP DEBE SER INTERACTIVA
//MOSTRANDO UN MENÚ PARA QUE EL USUARIO SELECCIONE LA OPCION

//AGREGAR FUNCIONES TRIGONOMETRICAS
-(double)seno:(double)grados{
    return sin([self radianesAGrados:grados]);
}
-(double)coseno:(double)grados{
    return cos([self radianesAGrados:grados]);
}
-(double)tangente:(double)grados{
    return tan([self radianesAGrados:grados]);
}
-(double)radianesAGrados:(double)radianes{
    return radianes * M_PI/180;
}

@end

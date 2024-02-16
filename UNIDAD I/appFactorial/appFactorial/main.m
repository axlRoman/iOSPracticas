//
//  main.m
//  appFactorial
//
//  Created by Usuario invitado on 16/02/24.
//

#import <Foundation/Foundation.h>

//Funcion factorial iterativa
NSUInteger factorialIterativo(NSUInteger n){
    NSUInteger resultado = 1;
    for(NSUInteger i=2; i<=n; ++i)
        resultado *=i;
    return resultado;
}

//funcion factorial recursiva
NSUInteger factorialRecursivo(NSUInteger n){
    NSUInteger resultado = 1;
    if(n==0 || n==1)
        return 1;
    else
        return n * [self factorialRecursivo:(n-1)];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Ingresa el numero para calcular factorial");
        
    }
    return 0;
}

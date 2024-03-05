//
//  main.m
//  appBloques
//
//  Created by Axel Roman on 03/03/24.
//

#import <Foundation/Foundation.h>

typedef NSInteger (^OperacionAritmetica)(NSInteger, NSInteger);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Función para realizar operaciones aritméticas
        OperacionAritmetica suma = ^(NSInteger a, NSInteger b) {
            return a + b;
        };
        
        OperacionAritmetica resta = ^(NSInteger a, NSInteger b) {
            return a - b;
        };
        
        OperacionAritmetica multiplicacion = ^(NSInteger a, NSInteger b) {
            return a * b;
        };
        
        OperacionAritmetica division = ^(NSInteger a, NSInteger b) {
            if (b != 0) {
                return a / b;
            } else {
                NSLog(@"Error: División por cero.");
                return 0;
            }
        };
        
        // Realizar operaciones aritméticas
        NSInteger resultadoSuma = suma(10, 5);
        NSLog(@"Suma: %ld", (long)resultadoSuma);
        
        NSInteger resultadoResta = resta(10, 5);
        NSLog(@"Resta: %ld", (long)resultadoResta);
        
        NSInteger resultadoMultiplicacion = multiplicacion(10, 5);
        NSLog(@"Multiplicación: %ld", (long)resultadoMultiplicacion);
        
        NSInteger resultadoDivision = division(10, 5);
        NSLog(@"División: %ld", (long)resultadoDivision);
        
        // Función para manejar cadenas
        void (^manejarCadena)(NSString *) = ^(NSString *cadena) {
            NSLog(@"Longitud de la cadena: %lu", (unsigned long)cadena.length);
            NSLog(@"Cadena en mayúsculas: %@", [cadena uppercaseString]);
            NSLog(@"Cadena invertida: %@", [NSString stringWithFormat:@"%@", [cadena stringByReplacingOccurrencesOfString:@"" withString:@"\n"]]);
        };
        
        // Manejar cadena
        NSString *cadena = @"Hola Mundo!";
        manejarCadena(cadena);
        
        // Juego de adivinanzas básico
        NSInteger respuestaCorrecta = 42;
        NSInteger respuestaUsuario;
        
        NSLog(@"¡Bienvenido al juego de adivinanzas!");
        NSLog(@"Intenta adivinar el número secreto entre 1 y 100.");
        
        do {
            NSLog(@"Ingresa tu respuesta:");
            scanf("%ld", &respuestaUsuario);
            
            if (respuestaUsuario < respuestaCorrecta) {
                NSLog(@"Demasiado bajo. Intenta de nuevo.");
            } else if (respuestaUsuario > respuestaCorrecta) {
                NSLog(@"Demasiado alto. Intenta de nuevo.");
            } else {
                NSLog(@"¡Felicidades! ¡Has adivinado el número secreto!");
            }
        } while (respuestaUsuario != respuestaCorrecta);
    }
    return 0;
}

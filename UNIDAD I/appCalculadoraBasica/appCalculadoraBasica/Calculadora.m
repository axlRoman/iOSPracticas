//
//  Calculadora.m
//  appCalculadoraBasica
//
//  Created by Axel Roman on 18/02/24.
//

#import "Calculadora.h"

@implementation Calculadora

- (void)menu {
    NSLog(@"Calculadora Aritmética");
    NSLog(@"1. Suma");
    NSLog(@"2. Resta");
    NSLog(@"3. Multiplicación");
    NSLog(@"4. División");
    NSLog(@"5. Residuo");
    NSLog(@"6. Determinar Número Primo");
    NSLog(@"7. Factorial de un Número");
    NSLog(@"8. Salir");
}

- (void)realizarOperacion:(NSInteger)operacion {
    NSInteger num1, num2 =0;
    switch (operacion) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            NSLog(@"Ingrese el primer número:");
            scanf("%ld", &num1);
            NSLog(@"Ingrese el segundo número:");
            scanf("%ld", &num2);
            break;
        case 6:
        case 7:
            NSLog(@"Ingrese un número:");
            scanf("%ld", &num1);
            break;
        default:
            NSLog(@"Opción no válida. Por favor, seleccione una opción válida.");
            return;
    }
    
    switch (operacion) {
        case 1:
            NSLog(@"El resultado de la suma es: %ld", [self sumar:num1 con:num2]);
            break;
        case 2:
            NSLog(@"El resultado de la resta es: %ld", [self restar:num1 de:num2]);
            break;
        case 3:
            NSLog(@"El resultado de la multiplicación es: %ld", [self multiplicar:num1 por:num2]);
            break;
        case 4:
            NSLog(@"El resultado de la división es: %.2f", [self dividir:num1 por:num2]);
            break;
        case 5:
            NSLog(@"El resultado del residuo es: %ld", [self residuo:num1 divididoPor:num2]);
            break;
        case 6:
            if ([self esPrimo:num1]) {
                NSLog(@"El número %ld es primo.", num1);
            } else {
                NSLog(@"El número %ld no es primo.", num1);
            }
            break;
        case 7:
            NSLog(@"El factorial de %ld es: %.2f", num1, [self factorial:num1]);
            break;
        default:
            break;
    }
}

- (NSInteger)sumar:(NSInteger)a con:(NSInteger)b {
    return a + b;
}

- (NSInteger)restar:(NSInteger)a de:(NSInteger)b {
    return a - b;
}

- (NSInteger)multiplicar:(NSInteger)a por:(NSInteger)b {
    return a * b;
}

- (CGFloat)dividir:(NSInteger)a por:(NSInteger)b {
    if (b == 0) {
        NSLog(@"Error: No se puede dividir por cero.");
        return NAN;
    }
    return (CGFloat)a / b;
}

- (NSInteger)residuo:(NSInteger)a divididoPor:(NSInteger)b {
    if (b == 0) {
        NSLog(@"Error: No se puede dividir por cero.");
        return NAN;
    }
    return a % b;
}

- (BOOL)esPrimo:(NSInteger)numero {
    if (numero <= 1) {
        return NO;
    }
    for (NSInteger i = 2; i <= sqrt(numero); i++) {
        if (numero % i == 0) {
            return NO;
        }
    }
    return YES;
}

- (double)factorial:(double)numero {
    if (numero == 0 || numero == 1) {
        return 1;
    }
    return numero * [self factorial:numero - 1];
}

@end

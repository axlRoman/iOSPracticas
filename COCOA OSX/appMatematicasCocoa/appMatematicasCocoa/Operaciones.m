//
//  Operaciones.m
//  appCalculadora
//
//  Created by Axel Roman on 18/02/24.
//

#import "Operaciones.h"

@implementation Operaciones

// SUMA
-(NSNumber *)suma:(NSNumber *)num1 mas:(NSNumber *)num2 {
    double n1 = [ num1 doubleValue ];
    double n2 = [ num2 doubleValue ];
    double suma = n1 + n2;
    NSNumber *resultado = [NSNumber numberWithDouble:suma];
    return resultado;
}

// RESTA
-(NSNumber *)resta:(NSNumber *)num1 menos:(NSNumber *)num2 {
    double n1 = [ num1 doubleValue ];
    double n2 = [ num2 doubleValue ];
    double resta = n1 - n2;
    NSNumber *resultado = [NSNumber numberWithDouble:resta];
    return resultado;
}

// MULTIPLICACION
-(NSNumber *)multiplica:(NSNumber *)num1 por:(NSNumber *)num2 {
    double n1 = [ num1 doubleValue ];
    double n2 = [ num2 doubleValue ];
    double mult = n1 * n2;
    NSNumber *resultado = [NSNumber numberWithDouble:mult];
    return resultado;
}

// DIVISION
-(NSNumber *)divide:(NSNumber *)num1 entre:(NSNumber *)num2 {
    double n1 = [ num1 doubleValue ];
    double n2 = [ num2 doubleValue ];
    double division = n1 / n2;
    NSNumber *resultado = [NSNumber numberWithDouble:division];
    return resultado;
}

// RESIDUO
-(int)obtenResiduo:(int)deNum1 entre:(int)num2 {
    while ( deNum1 >= num2 ) {
        deNum1 = deNum1 - num2;
    }
    
    return deNum1;
}

// FACTORIAL
-(double)factorial:(double)n {
    double fact = 1;
    
    if ( n == 0 || n == 1 ) {
        return fact;
    } else {
        return n * [ self factorial:n-1 ];
    }
}

// ES_PRIMO
-(BOOL)esPrimo:(int)n {
    
    if ( n <= 1 )
        return NO;
    
    for ( int i = 2; i <= n-1; i++ ) {
        if ( n % i == 0 )
            return NO;
    }
    
    return YES;
}
@end

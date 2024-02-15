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

@end

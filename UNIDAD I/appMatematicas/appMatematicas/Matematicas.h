//
//  Matematicas.h
//  appMatematicas
//
//  Created by Usuario invitado on 15/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Matematicas : NSObject
// SUMA
-(NSNumber *)suma:(NSNumber *)num1 mas:(NSNumber *)num2;
// RESTA
-(NSNumber *)resta:(NSNumber *)num1 menos:(NSNumber *)num2;
// MULTIPLICACION
-(NSNumber *)multiplica:(NSNumber *)num1 por:(NSNumber *)num2;
// DIVISION
-(NSNumber *)divide:(NSNumber *)num1 entre:(NSNumber *)num2;


- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
- (void) multiplyA:(NSNumber *)a withB:(NSNumber *)b yregresaR:(NSNumber *)resul;
- (void) multiplyA_:(NSNumber *)a withB:(NSNumber *)b yregresaR:(double *)resultado;
-(double)factorialI:(double)n;
-(double)factorialR:(double)n;

-(BOOL)esPrimo:(int)n;
-(double)seno:(double)grados;
-(double)coseno:(double)grados;
-(double)tangente:(double)grados;

-(double)radianesAGrados:(double)radianes;
@end

NS_ASSUME_NONNULL_END

//
//  Matematicas.h
//  appMatematicas
//
//  Created by Usuario invitado on 15/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Matematicas : NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
- (void) multiplyA:(NSNumber *)a withB:(NSNumber *)b yregresaR:(NSNumber *)resul;
- (void) multiplyA_:(NSNumber *)a withB:(NSNumber *)b yregresaR:(double *)resultado;
-(double)factorialI:(double)n;
-(double)factorialR:(double)n;

-(BOOL)esPrimo:(int)n;
@end

NS_ASSUME_NONNULL_END

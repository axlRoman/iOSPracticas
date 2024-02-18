//
//  Calculadora.h
//  appCalculadoraBasica
//
//  Created by Axel Roman on 18/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculadora : NSObject

- (void)menu;
- (void)realizarOperacion:(NSInteger)operacion;
- (NSInteger)sumar:(NSInteger)a con:(NSInteger)b;
- (NSInteger)restar:(NSInteger)a de:(NSInteger)b;
- (NSInteger)multiplicar:(NSInteger)a por:(NSInteger)b;
- (CGFloat)dividir:(NSInteger)a por:(NSInteger)b;
- (NSInteger)residuo:(NSInteger)a divididoPor:(NSInteger)b;
- (BOOL)esPrimo:(NSInteger)numero;
- (double)factorial:(double)numero;

@end

NS_ASSUME_NONNULL_END

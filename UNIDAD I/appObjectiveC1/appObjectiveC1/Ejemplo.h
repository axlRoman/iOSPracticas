//
//  Ejemplo.h
//  appObjectiveC1
//
//  Created by Usuario invitado on 13/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ejemplo : NSObject
// Definicion de la clase
- (int)max:(int)num1 andNum2:(int)num2;
//AGREGAR UN METODO PARA DETERMINAR EL MENOR
- (int)min:(int)num1 andNum2:(int)num2;
//AGREGAR UN METODO PARA DETERMINAR EL MAYOR DE TRES NUMEROS
- (int)maxTres:(int)num1 andNum2:(int)num2 andNum3:(int)num3;
@end

NS_ASSUME_NONNULL_END

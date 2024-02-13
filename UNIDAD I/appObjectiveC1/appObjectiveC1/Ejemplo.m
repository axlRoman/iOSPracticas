//
//  Ejemplo.m
//  appObjectiveC1
//
//  Created by Usuario invitado on 13/02/24.
//

#import "Ejemplo.h"
// Archivo de implementacion de la clase
@implementation Ejemplo
- (int)max:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   int result;

   if (num1 > num2) {
      result = num1;
   } else {
      result = num2;
   }

   return result;
}

-(int)min:(int)num1 andNum2:(int)num2{
    int result;

    if (num1 < num2) {
       result = num1;
    } else {
       result = num2;
    }

    return result;
}

- (int)maxTres:(int)num1 andNum2:(int)num2 andNum3:(int)num3{
    int result;

    if (num1 > num2 && num1 > num3) {
        result = num1;
    } else if(num2 > num1 && num2 > num3){
        result = num2;
    } else {
       result = num3;
    }

    return result;
}
@end

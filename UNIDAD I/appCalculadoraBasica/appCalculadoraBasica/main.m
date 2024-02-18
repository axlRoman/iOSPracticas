//
//  main.m
//  appCalculadoraBasica
//
//  Created by Axel Roman on 18/02/24.
//

#import <Foundation/Foundation.h>
#import "Calculadora.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Desactivar la impresión de la marca de tiempo
        setenv("NSUnbufferedIO", "YES", 1);
        Calculadora *calculadora = [[Calculadora alloc] init];
        NSInteger operacion;
                
        while (true) {
            [calculadora menu];
            NSLog(@"Seleccione una operación (1-8):");
            scanf("%ld", &operacion);
                    
            if (operacion == 8) {
                NSLog(@"¡Hasta luego! 🫡");
                break;
            }
                    
            [calculadora realizarOperacion:operacion];
        }
    }
    return 0;
}

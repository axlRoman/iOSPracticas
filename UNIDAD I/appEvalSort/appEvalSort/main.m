//
//  main.m
//  appEvalSort
//
//  Created by Axel Roman on 03/03/24.
//

#import <Foundation/Foundation.h>
#import "Ordenamiento.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Datos de ejemplo
        NSArray *datos = @[@3, @1, @4, @1, @5, @9, @2, @6, @5, @3];
            
        // Llamada al método de ordenamiento
        NSArray *datosOrdenados = [Ordenamiento metodoDeOrdenamiento:datos];
        
        // Imprimir los datos ordenados
        NSLog(@"Datos Ordenados: %@", datosOrdenados);
    }
    return 0;
}

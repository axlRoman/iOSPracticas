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
//        // Generar 500 datos aleatorios
//        NSMutableArray *datos = [NSMutableArray array];
//        for (int i = 0; i < 500; i++) {
//            NSNumber *randomNumber = [NSNumber numberWithInt:arc4random_uniform(900)+100]; // Genera números aleatorios entre 0 y 999
//            [datos addObject:randomNumber];
//        }
//
//        // Llamada al método de ordenamiento
//        NSArray *datosOrdenados = [Ordenamiento metodoBurbuja:datos];
//
//        // Imprimir los datos ordenados con su posición
//        NSLog(@"Numeros ordenados metodo burbuja");
//        for (int i = 0; i < datosOrdenados.count; i++) {
//            NSLog(@"Número %d: %@", i+1, datosOrdenados[i]);
//        }
//
//        //--------------------------------------------------------
//        NSMutableArray *datos2 = [NSMutableArray array];
//        for (int i = 0; i < 500; i++) {
//            NSNumber *randomNumber = [NSNumber numberWithInt:arc4random_uniform(900)+100];
//            [datos2 addObject:randomNumber];
//        }
//
//        NSArray *datosOrdenados2 = [Ordenamiento sort2:datos2];
//        //Ordenamiento sort
//        NSLog(@"Numeros ordenados con el segundo metodo de ordenacion");
//        for (int i = 0; i < datosOrdenados2.count; i++) {
//            NSLog(@"Número %d: %@", i+1, datosOrdenados2[i]);
//        }
        
        //-------------------------------------------------------
        NSMutableArray *datos3 = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            NSNumber *randomNumber = [NSNumber numberWithInt:arc4random_uniform(900)+100];
            [datos3 addObject:randomNumber];
        }
                
        NSArray *datosOrdenados3 = [Ordenamiento insertionSort:datos3];
        //Ordenamiento sort
        NSLog(@"Numeros ordenados con el tercer metodo de ordenacion");
        for (int i = 0; i < datosOrdenados3.count; i++) {
            NSLog(@"Número %d: %@", i+1, datosOrdenados3[i]);
        }
    }
    return 0;
}


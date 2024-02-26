//
//  main.m
//  appNSArrays
//
//  Created by Axel Roman on 23/02/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *array;
//        array = [[NSMutableArray alloc] init];
//        int i;
//        for (i = 0; i < 10; i++)
//        {
//            NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
//            [array addObject:newNumber];
//            array[i] = newNumber;
//        }
//        for ( i = 0; i < 10; i++) {
//            //NSNumber *numberToPrint = [array objectAtIndex:i];
//            //NSLog(@"The number at index %d is %@",  i, numberToPrint);
//            NSLog(@"The number at index %d is %@",  i, array[i]);
//        }
//
//        NSNumber *num = [[NSNumber alloc]initWithInt:100];
//        [array addObject:num];
//        NSLog(@"Mostrar el ARREGLO SIN USAR CICLO");
//        NSLog(@"%@",array);
//        NSLog(@"Numero de elementos %lu",[array count]);
//
//        NSNumber *n2 = [[NSNumber alloc]initWithInt:78];
//        [array insertObject:n2 atIndex:5];
//
//        NSLog(@"Mostrar el ARREGLO SIN USAR CICLO");
//        NSLog(@"%@",array);
//        NSLog(@"Numero de elementos %lu",[array count]);
        
        // Recorre el arreglo original en orden inverso y agrega los elementos al nuevo arreglo
//        NSMutableArray *arrayInvertido = [NSMutableArray arrayWithCapacity:[array count]];
//        for (NSInteger i = [array count] - 1; i >= 0; i--) {
//            [arrayInvertido addObject:array[i]];
//        }
//        NSLog(@"Mostrar el ARREGLO INVERTIDO");
//        NSLog(@"%@",arrayInvertido);
//        NSLog(@"Numero de elementos %lu",[arrayInvertido count]);
//
//
//        for (NSInteger i = [array count] - 1; i >= 0; i--) {
//            [array addObject:array[i]];
//        }
        
//        [array reverseObjectEnumerator];
//        NSLog(@"Mostrar el ARREGLO INVERTIDO");
//        NSLog(@"%@",array);
//        NSLog(@"Numero de elementos %lu",[array count]);

//        NSMutableArray *vector = [[NSMutableArray alloc]init];
        int ndatos = arc4random_uniform(6) + 5;

        //INSERTAR DATOS ALEATORIOS DE 3 DIGITOS
        //MOSTRAR CON for.. in
        NSMutableArray *vector3Cifras = [[NSMutableArray alloc]init];
        //int datos3Cifras = arc4random_uniform(900) + 100;
        
        for (int i = 0; i < ndatos; i++)
        {
            NSNumber *numero = [[NSNumber alloc] initWithInt:arc4random_uniform(900) + 100];
            vector3Cifras[i] = numero;
            //int datos3Cifras = arc4random_uniform(900) + 100;
            //[vector3Cifras addObject:@(datos3Cifras)]; // Agrega el número aleatorio al vector
        }
        
        NSLog(@"UTILIZANDO for .. in");
        int r =0;
        for (NSNumber *numero in vector3Cifras) {
            NSLog(@"vec[%d] %@",r++, numero);
        }
        
        //investigar las propiedades de acceso en las clases objective-c
        //protected,private,etc
        
        NSNumber *letraA = @'A'; // con el @antepuesto CONVERTIMOS A NSOBJECT
                                 //EL ELEMENTO INDICADO
        char letra = [letraA charValue];
        NSLog(@"%@ = %c = %d", letraA, letra, letra);
        
        NSNumber *numero1NS = @35;
        int num1 = numero1NS.intValue;
        NSLog(@"%@ = %d", numero1NS, num1);
        
        //NSArray *vector2 = @[@4,@10,@69, @89, @56];
        NSArray *vector2 = @[@65,@66,@97, @98, @48];
        NSLog(@"%@",vector2);
        
        //EVALUACION CADENAS (NSSTRING) EN OBJECTIVE-C
        //
    }
    return 0;
}

//
//  main.m
//  appMatematicas
//
//  Created by Usuario invitado on 15/02/24.
//

#import <Foundation/Foundation.h>
#import "Matematicas.h"
#include <iostream>

using namespace std;
//Al incluir c++, objective c se comvierte en Objective-C+

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Matematicas *mate = [[Matematicas alloc]init];
        double na,nb;
        //CAPTURAR CON C
        //        printf("Numero a: ");
        //        scanf("%lf",&na);
        //        cout<<"Numero b: ";
        //        cin>>nb;
        //
        //        NSNumber *a = [NSNumber numberWithFloat:na];
        //        NSNumber *b = [NSNumber numberWithFloat:nb];
        //        NSNumber *result = [mate multiplyA:a withB:b];
        //        NSString *resultString = [result stringValue];
        //        NSLog(@"🤩The product is %@🐭",resultString);
        //
        //        //IMPLEMENTAR UN METODO QUE REGRESE EL RESULTADO EN UN OBJETO NSNUMBER
        //        NSNumber *r = [NSNumber numberWithFloat:0.0];
        //        [mate multiplyA:a withB:b yregresaR:r];
        //        NSLog(@"🤩The product is %@🐭",r);
        
        //IMPLEMENTAR UN METODO QUE REGRESE EL RESULTADO EN UN OBJETO NSNUMBER
        //EN UNA VARIABLE double
        //double resultado = 100;
        //        double resultado;
        //        [mate multiplyA_:a withB:b yregresaR:resultado];
        //        NSLog(@"🤩The product is %.2f🐭",resultado);
        
        double angulo;
        scanf("%lf",&angulo);
        
        NSLog(@"El seno de %.2f radianes es %.2f", angulo, sinValue);    }
    return 0;
}

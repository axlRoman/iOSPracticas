//
//  main.m
//  appObjectiveC1
//
//  Created by Usuario invitado on 12/02/24.
//
#import <Foundation/Foundation.h>
#import "Ejemplo.h"
//@interface SampleClass:NSObject
///* method declaration */
//- (int)max:(int)num1 andNum2:(int)num2;
//@end
//
//@implementation SampleClass
//
///* method returning the max between two numbers */
//- (int)max:(int)num1 andNum2:(int)num2 {
//
//   /* local variable declaration */
//   int result;
//
//   if (num1 > num2) {
//      result = num1;
//   } else {
//      result = num2;
//   }
//
//   return result;
//}
//
//@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n1,n2,n3;
        printf("Numero 1: ");
        scanf("%d",&n1);
        printf("Numero 2: ");
        scanf("%d",&n2);
        printf("Numero 3: ");
        scanf("%d",&n3);
        Ejemplo *ejemplo = [[Ejemplo alloc] init];
        int resul = [ejemplo max:n1 andNum2:n2];
        NSLog(@"\nEl Mayor de los primeros dos es: %d\n", resul);
        int resul1 = [ejemplo min:n1 andNum2:n2];
        NSLog(@"\nEl Menor es: %d\n", resul1);
        int resul2 = [ejemplo maxTres:n1 andNum2:n2 andNum3:n3];
        NSLog(@"\nEl De los tres es: %d\n", resul2);
    }
    return 0;
}

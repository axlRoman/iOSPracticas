//
//  main.m
//  appObjectiveC1
//
//  Created by Usuario invitado on 12/02/24.
//
#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (int)max:(int)num1 andNum2:(int)num2;
@end

@implementation SampleClass

/* method returning the max between two numbers */
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

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Tec LAGUNA!");
        
        SampleClass *ejemplo = [[SampleClass alloc] init];
        [ejemplo max:5 andNum2:6];
        NSLog(@"Valor de max es: %d\n");
    }
    return 0;
}

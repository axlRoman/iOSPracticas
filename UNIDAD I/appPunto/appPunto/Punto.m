//
//  Punto.m
//  appPunto
//
//  Created by Axel Roman on 20/02/24.
//

#import "Punto.h"

@implementation Punto
static NSInteger nPuntos = 0;
+(NSString *) sistema{
    return @"SISTEMA CARTESIANO";
}
+(NSInteger) numPuntos{
    return nPuntos;
}
// -(id) init { }
-init{
    //self = this //super es llamar al padre
    if((self = [super init]))
        nPuntos++;
    return self;
}
@end

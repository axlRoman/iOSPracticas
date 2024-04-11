//
//  PalabraAdivinada.m
//  appJuegoPalabras
//
//  Created by Axel Roman on 18/03/24.
//

#import "PalabraAdivinada.h"

@implementation PalabraAdivinada

- (instancetype)initWithLength:(NSUInteger)length {
    self = [super init];
    if (self) {
        self.palabra = [NSMutableString stringWithString:[@"_" stringByPaddingToLength:length withString:@"_" startingAtIndex:0]];
    }
    return self;
}

- (void)mostrar {
    for (NSUInteger i = 0; i < [self.palabra length]; i++) {
        NSString *letra = [self.palabra substringWithRange:NSMakeRange(i, 1)];
        printf("%s ", [letra UTF8String]);
    }
    printf("\n\n");
}

- (void)procesarLetra:(NSString *)letra enPalabraSecreta:(NSString *)palabraSecreta {
    BOOL acierto = NO;
    for (NSUInteger i = 0; i < [palabraSecreta length]; i++) {
        NSString *letraSecreta = [palabraSecreta substringWithRange:NSMakeRange(i, 1)];
        if ([letraSecreta isEqualToString:letra]) {
            [self.palabra replaceCharactersInRange:NSMakeRange(i, 1) withString:letra];
            acierto = YES;
        }
    }
    if (!acierto) {
        printf("¡Letra incorrecta!\n");
    }
}


@end

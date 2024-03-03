//
//  NumerosAleatorios.m
//  appNumerosAleatorios
//
//  Created by Axel Roman on 29/02/24.
//

#import "NumerosAleatorios.h"

@implementation NumerosAleatorios

- (IBAction)botonGenerarNumeroAleatorio:(id)sender {
    int n = random() % 900 + 100;
    NSLog(@"Dato Generado = %d", n);
    [etiqueta1 setIntValue:n];
}

- (IBAction)botonIniciarGenerador:(NSButton *)sender {
    //1 de enero de 1970 es donde se inicia el timepo al darle null a time
    srand((unsigned) time(NULL));
    [etiqueta1 setStringValue:@"Generador iniciado"];
}

- (void) awakeFromNib{
    NSDate *fecha = [NSDate date];
    [etiqueta1 setObjectValue:fecha];
}
@end

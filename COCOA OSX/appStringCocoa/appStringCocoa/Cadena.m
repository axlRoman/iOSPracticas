//
//  Cadena.m
//  appStringCocoa
//
//  Created by Axel Roman on 15/03/24.
//

#import "Cadena.h"

@implementation Cadena

- (IBAction)btnContarCaracteres:(NSButton *)sender {
    unsigned long int cantCar = textoEntrada.stringValue.length;
    etiqCantCaracteres.intValue = (int) cantCar;
}

- (IBAction)btnSaludar:(NSButton *)sender {
    //Opcion 1
//    NSString *cad = textoEntrada.stringValue;
//    etiqSaludar.stringValue = cad;
    
    //Opcion 2
//    NSString *cad = [@"Hola "stringByAppendingString:textoEntrada.stringValue];
//    etiqSaludar.stringValue = cad;
    
    //Opcion 3
    etiqSaludar.stringValue = [@"Hola "stringByAppendingString:textoEntrada.stringValue];
}
- (IBAction)btnConvertirAMayusculas:(id)sender {
    etiqAmayusculas.stringValue = textoEntrada.stringValue.uppercaseString;
    
}

- (IBAction)btnCantMayusculas:(NSButton *)sender {
    NSString *texto = textoEntrada.stringValue;
        NSUInteger contadorMayusculas = 0;
        
        for (NSUInteger i = 0; i < texto.length; i++) {
            unichar caracter = [texto characterAtIndex:i];
            if ([[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:caracter]) {
                contadorMayusculas++;
            }
        }
        
        etiqCantMayusculas.intValue = (int)contadorMayusculas;
}
@end

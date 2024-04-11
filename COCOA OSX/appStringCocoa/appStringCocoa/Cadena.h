//
//  Cadena.h
//  appStringCocoa
//
//  Created by Axel Roman on 15/03/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cadena : NSObject
{
    
    __weak IBOutlet NSTextField *textoEntrada;
    __weak IBOutlet NSTextField *etiqSaludar;
    __weak IBOutlet NSTextField *etiqCantCaracteres;
    __weak IBOutlet NSTextField *etiqCantMayusculas;
    __weak IBOutlet NSTextField *etiqAmayusculas;
}

- (IBAction)btnSaludar:(NSButton *)sender;

- (IBAction)btnContarCaracteres:(NSButton *)sender;
- (IBAction)btnCantMayusculas:(NSButton *)sender;
- (IBAction)btnConvertirAMayusculas:(NSButton *)sender;

@end

NS_ASSUME_NONNULL_END

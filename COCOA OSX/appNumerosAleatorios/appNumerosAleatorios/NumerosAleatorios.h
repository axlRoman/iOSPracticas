//
//  NumerosAleatorios.h
//  appNumerosAleatorios
//
//  Created by Axel Roman on 29/02/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumerosAleatorios : NSObject
//Atributos
{
    
    __weak IBOutlet NSTextField *etiqueta1;
}

//Acciones o metodos
- (IBAction)botonIniciarGenerador:(NSButton *)sender;
- (IBAction)botonGenerarNumeroAleatorio:(id)sender;

- (void) awakeFromNib;


@end

NS_ASSUME_NONNULL_END

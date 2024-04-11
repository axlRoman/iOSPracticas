//
//  CocoaMatematicas.m
//  appMatematicasCocoa
//
//  Created by Axel Roman on 06/03/24.
//

#import "CocoaMatematicas.h"
#import "Matematicas.h"

@implementation CocoaMatematicas

- (void) awakeFromNib {
    // CONECTAR EL STEPPER AL TEXTFIELD
    _stepper1.intValue = -15;
    _textoNum1.intValue = _stepper1.intValue;
    
    //_sliderC1.intValue = 30;
    _textoNum2.intValue = _sliderC1.intValue = 30;
}

- (IBAction)btnSalir:(NSButton *)sender {
    NSBeep();
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"ADIOS 👾"];
    [alert setInformativeText:@"bye bye 👋"];
    [alert addButtonWithTitle:@"Cancelar 🙅‍♂️"]; // Boton cero
    [alert addButtonWithTitle:@"OK"];
    
    if ( [alert runModal] == NSAlertSecondButtonReturn )
        [NSApp terminate:self];
}

- (IBAction)btnRestar:(NSButton *)sender {
}

- (IBAction)btnSumar:(id)sender {
    NSNumber *n1 = [NSNumber numberWithInt:_textoNum1.intValue];
    NSNumber *n2 = [NSNumber numberWithInt:_textoNum2.intValue];
    Matematicas *mat = [[Matematicas alloc]init];
    NSNumber *resul = [mat suma:n1 mas:n2];
    //[_etiquetaResultado setIntValue:resul.intValue];
    _etiquetaResultado.intValue = resul.intValue;}

- (IBAction)sliderC1:(NSSlider *)sender {
}

- (IBAction)stepper1:(id)sender {
    
}
@end

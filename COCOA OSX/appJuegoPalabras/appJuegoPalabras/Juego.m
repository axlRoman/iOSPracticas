//
//  Juego.m
//  appJuegoPalabras
//
//  Created by Axel Roman on 18/03/24.
//

#import "Juego.h"
#import "PalabraAdivinada.h"
#import <Cocoa/Cocoa.h>

@implementation Juego

- (IBAction)btnSiguienteNivel:(NSButton *)sender {
    static NSDictionary *nivel = nil;
    static NSUInteger nivelIndex = 0;
    static NSArray *niveles = nil;

    // Inicialización de los niveles y las imágenes
    if (!niveles) {
        niveles = @[@"ABEJA", @"BURRO", @"CANGURO", @"DELFIN", @"ELEFANTE", @"FLAMENCO", @"GATO", @"HAMSTER", @"IGUANA", @"JIRAFA", @"KOALA", @"LEON", @"MONO", @"NUTRIA", @"ÑANDU", @"OSO", @"PINGÜINO", @"QUETZAL", @"RANA", @"SERPIENTE", @"TIGRE", @"URRACA", @"VACA", @"WALLABY", @"XOLOITZCUINTLE", @"YEGUA", @"ZORRO"];
        NSArray *imagenes = @[@"Abeja", @"Burro", @"Canguro", @"delfin", @"elefante", @"flamenco", @"gato", @"hamster", @"iguana", @"jirafa", @"koala", @"leon", @"mono", @"nutria", @"ñandu", @"oso", @"pingüino", @"quetzal", @"rana", @"serpiente", @"tigre", @"urraca", @"vaca", @"wallaby", @"xoloitzcuintle", @"yegua", @"zorro"];
        nivel = [NSDictionary dictionaryWithObjects:imagenes forKeys:niveles];
    }
    
    NSString *palabra = _etiqPalabra.stringValue.uppercaseString;
    NSString *palabraCorrecta = niveles[nivelIndex];

    if ([palabra isEqualToString:palabraCorrecta]) {
        // Si la palabra es correcta, mostrar la alerta y pasar al siguiente nivel
        NSString *mensaje = [NSString stringWithFormat:@"¡Has completado el nivel!\nLa palabra es %@", palabra];
        [self mostrarAlertaConTitulo:@"¡Correcto!" yMensaje:mensaje];
        _etiqPalabra.stringValue = @"";
        
        // Cambiar la imagen al siguiente nivel si hay uno disponible
        if (nivelIndex + 1 < niveles.count) {
            nivelIndex++;
            NSString *nombreImagen = nivel[niveles[nivelIndex]];
            _imageAnimal.image = [NSImage imageNamed:nombreImagen];
        } else {
            NSBeep();
            NSAlert *alert = [[NSAlert alloc] init];
            [alert setMessageText:@"🎉¡¡FELICIDADES!! 👏🏽🎉"];
            [alert setInformativeText:@"Haz completado los niveles\nGracias por Jugar 😌"];
            [alert addButtonWithTitle:@"OK"];
            
            if ( [alert runModal] == NSAlertFirstButtonReturn )
                [NSApp terminate:self];
        }
    } else {
        // Si la palabra es incorrecta, mostrar la alerta correspondiente
        NSMutableString *palabraMostrada = [NSMutableString string];
        for (NSUInteger i = 0; i < [palabraCorrecta length]; i++) {
            NSString *letraCorrecta = [palabraCorrecta substringWithRange:NSMakeRange(i, 1)];
            if ([palabra containsString:letraCorrecta]) {
                [palabraMostrada appendString:letraCorrecta];
            } else {
                [palabraMostrada appendString:@"_"];
            }
        }
        
        _etiqPalabra.stringValue = palabraMostrada;
        
        NSString *mensaje = [NSString stringWithFormat:@"¡Sigue intentándolo!\nTienes correctas las siguientes letras:\n%@", palabraMostrada];
        [self mostrarAlertaConTitulo:@"¡Incorrecto!" yMensaje:mensaje];
    }
}



- (void)mostrarAlertaConTitulo:(NSString *)titulo yMensaje:(NSString *)mensaje {
    NSBeep();
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:titulo];
    [alert setInformativeText:mensaje];
    [alert addButtonWithTitle:@"OK"];
    
    [alert runModal];
}


- (IBAction)btnSalir:(NSButton *)sender {
    NSBeep();
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"ADIOS 👋🏾"];
    [alert setInformativeText:@"Gracias por Jugar 😌"];
    [alert addButtonWithTitle:@"Cancelar "]; // Boton cero
    [alert addButtonWithTitle:@"OK"];
    
    if ( [alert runModal] == NSAlertSecondButtonReturn )
        [NSApp terminate:self];
}



@end

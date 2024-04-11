//
//  Juego.h
//  appJuegoPalabras
//
//  Created by Axel Roman on 18/03/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Juego : NSObject

@property (weak) IBOutlet NSTextField *etiqPalabra;
@property (weak) IBOutlet NSImageView *imageAnimal;

- (void)mostrarAlertaConTitulo:(NSString *)titulo yMensaje:(NSString *)mensaje;


@end

NS_ASSUME_NONNULL_END

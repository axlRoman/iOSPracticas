//
//  ViewController.h
//  appTimer
//
//  Created by Axel Roman on 12/03/24.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

{
    NSTimer *timer;
    int cont;
    
}
@property (weak) IBOutlet NSButton *botonIniciar;

@property (weak) IBOutlet NSButton *botonDetener;

@property (weak) IBOutlet NSButton *botonReiniciar;
@property (weak) IBOutlet NSTextField *resultado;

- (IBAction)botonIniciar:(NSButton *)sender;

- (IBAction)botonDetener:(NSButton *)sender;

- (IBAction)botonReiniciar:(NSButton *)sender;
- (IBAction)botonSalir:(NSButton *)sender;

@end


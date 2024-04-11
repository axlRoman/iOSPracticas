//
//  ViewController.m
//  appTimer
//
//  Created by Axel Roman on 12/03/24.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cont = 0;
//    [_botonIniciar setEnabled:YES];
//    _botonDetener.enabled = NO;
//    _botonReiniciar.enabled = NO;
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)botonSalir:(NSButton *)sender {
    [NSApp terminate:self];
}

- (IBAction)botonReiniciar:(NSButton *)sender {
    [timer invalidate]; //detener el timer
    [_resultado setStringValue:@"PRESIONASTE REINICIAR"];
    cont = 0;
    [self botonIniciar:nil];
}

- (IBAction)botonDetener:(NSButton *)sender {
    _botonReiniciar.enabled = YES;
    [timer invalidate];
    //[_resultado setStringValue:@"PRESIONASTE DETENER"];
    _botonDetener.enabled = NO;
    
}

- (void) contador{
    [_resultado setIntValue:cont];
    cont++;
}
- (IBAction)botonIniciar:(NSButton *)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(contador) userInfo:nil repeats:YES];
    
    [_botonIniciar setEnabled:NO];
    _botonDetener.enabled = YES;
    _botonReiniciar.enabled = NO;
}

@end

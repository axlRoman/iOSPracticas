//
//  CocoaMatematicas.h
//  appMatematicasCocoa
//
//  Created by Axel Roman on 06/03/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface CocoaMatematicas : NSObject
{
    //AQUI VAN LOS ATRIBUTOS
    
}
@property (weak) IBOutlet NSTextField *textoNum1;

@property (weak) IBOutlet NSTextField *textoNum2;

@property (weak) IBOutlet NSTextField *etiquetaResultado;

@property (weak) IBOutlet NSStepper *stepper1;
@property (weak) IBOutlet NSSlider *sliderH1;
@property (weak) IBOutlet NSSlider *sliderC1;

- (IBAction)stepper1:(id)sender;
- (IBAction)sliderC1:(NSSlider *)sender;

- (IBAction)btnSumar:(id)sender;
- (IBAction)btnRestar:(NSButton *)sender;

- (IBAction)btnSalir:(NSButton *)sender;

-(void) awakeFromNib;

@end

NS_ASSUME_NONNULL_END

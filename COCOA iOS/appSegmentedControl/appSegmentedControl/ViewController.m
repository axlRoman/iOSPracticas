//
//  ViewController.m
//  appSegmentedControl
//
//  Created by Axel Roman on 24/04/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imagenesVehiculos.image = [UIImage imageNamed:@"carro1"];
}


- (IBAction)segmendValueChange:(id)sender {
    switch (self.segmendControlVehiculos.selectedSegmentIndex) {
        case 0:
            self.imagenesVehiculos.image= [UIImage imageNamed:@"bici1"];
            break;
        
        case 1:
            self.imagenesVehiculos.image= [UIImage imageNamed:@"moto1"];
            break;
            
        case 2:
            self.imagenesVehiculos.image= [UIImage imageNamed:@"carro1"];
            break;
        case 3:
            self.imagenesVehiculos.image= [UIImage imageNamed:@"camioneta1"];
            break;
    }
}
- (IBAction)ajustesValueChange:(id)sender {
    switch (self.segmendControlAjustes.selectedSegmentIndex) {
        case 0:
            // Aspect Fit
            self.imagenesVehiculos.contentMode = UIViewContentModeScaleAspectFit;
            break;
        case 1:
            // Scale to Fill
            self.imagenesVehiculos.contentMode = UIViewContentModeScaleToFill;
            break;
        case 2:
            // Aspect Fill
            self.imagenesVehiculos.contentMode = UIViewContentModeScaleAspectFill;
            break;
    }
}
@end

//
//  ViewController.h
//  appIOS1
//
//  Created by Axel Roman on 20/03/24.
//

#import <UIKit/UIKit.h>

// Implementar:
// 1. Primer Juego de las cartas, Lectura 2
// Entregar miercoles miercoles 27
// 2. Segundo Juego de las cartas, Lectura 3
// Viernes 5 de abril


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *texto1;
@property (weak, nonatomic) IBOutlet UILabel *labelSaludo;
@property (weak, nonatomic) IBOutlet UITextField *texto2;

- (IBAction)btnSaludar:(UIButton *)sender;
- (IBAction)btnAMayusculas:(UIButton *)sender;
- (IBAction)brnCantMayusculas:(UIButton *)sender;

- (IBAction)mostrarTeclado:(UITextField *)sender;


@end


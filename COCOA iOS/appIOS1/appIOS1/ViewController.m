//
//  ViewController.m
//  appIOS1
//
//  Created by Axel Roman on 20/03/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Mostrar u ocultar el teclado
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(olvidarKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

//Evento para ocultar el teclado
- (void) olvidarKeyboard {
    [_texto1 resignFirstResponder];
    
}



- (IBAction)mostrarTeclado:(UITextField *)sender {
    [self becomeFirstResponder];
}

- (IBAction)brnCantMayusculas:(UIButton *)sender {
    NSString *cad = _texto1.text;
    NSInteger len = _texto1.text.length;
    int i, cont;
    i = cont = 0;
    while(i<len){
        unichar letra = [cad characterAtIndex:i];
        if(letra >= 'A' && letra <= 'Z')
            cont++;
        i++;
    }
    _texto2.text = [[NSString alloc]initWithFormat:@"%d",cont];
}

- (NSString *)convertirAMayusculas:(NSString *)texto {
    NSMutableString *textoMayusculas = [NSMutableString stringWithString:texto];
    NSRange rango = NSMakeRange(0, [textoMayusculas length]);
    [textoMayusculas replaceOccurrencesOfString:@"ñ" withString:@"Ñ" options:NSLiteralSearch range:rango];
    [textoMayusculas replaceOccurrencesOfString:@"á" withString:@"Á" options:NSLiteralSearch range:rango];
    [textoMayusculas replaceOccurrencesOfString:@"é" withString:@"É" options:NSLiteralSearch range:rango];
    [textoMayusculas replaceOccurrencesOfString:@"í" withString:@"Í" options:NSLiteralSearch range:rango];
    [textoMayusculas replaceOccurrencesOfString:@"ó" withString:@"Ó" options:NSLiteralSearch range:rango];
    [textoMayusculas replaceOccurrencesOfString:@"ú" withString:@"Ú" options:NSLiteralSearch range:rango];
    return textoMayusculas;
}

- (IBAction)btnAMayusculas:(UIButton *)sender {
    _texto1.text = [self convertirAMayusculas:_texto1.text];
    //IMPLEMENTAR UN METODO PARA SIMULAR EL FUNCIONAMIENTO DE
    //uppercaseString  subir domingo 24 de marzo
}

- (IBAction)btnSaludar:(UIButton *)sender {
    _labelSaludo.text = _texto1.text;
}
@end

//
//  ViewController.m
//  appPickerView2Columnas
//
//  Created by Axel Roman on 17/04/24.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *productos;
    NSArray *colores;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    productos = @[@"Pantalla LCD",@"iPad",@"Bicicleta",@"Motocicleta",@"Carro",@"Camioneta"];
    colores = @[@"Rojo 🌶",@"Verde 🐸",@"Azul 🐬",@"Gris 👽",@"Naranja 🍊",@"Aleatorio 🔀"];
    
    _pickerView1.dataSource = self;
    _pickerView1.delegate = self;
    
    _label1.text = [NSString stringWithFormat:@"%@, %@",[productos objectAtIndex:0],[colores objectAtIndex:0]];
    
    NSLog(@"%@", _label1.text);
    
    UIColor*color = [UIColor colorWithRed:0 green:175 blue:150 alpha:1];
    
    self.view.backgroundColor = color;
    
    _imageView1.backgroundColor = [UIColor colorWithRed:161 green:133 blue:148 alpha:1];
    
    _imageView1.image = [UIImage imageNamed:@"PantallaLCD"];
 
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0)
        return productos.count;
    else
        return colores.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0)
        return [productos objectAtIndex:row];
    else
        return colores[row];
    return nil;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _label1.text = [NSString stringWithFormat:@"%@, %@", [productos objectAtIndex:[_pickerView1 selectedRowInComponent:0]], [colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    
    int color = (int) [colores indexOfObject:[colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    
    switch (color) {
        case 0:
            _imageView1.backgroundColor = [UIColor redColor];
            break;
            
        case 1:
            _imageView1.backgroundColor = [UIColor greenColor];
            break;
            
        case 2:
            _imageView1.backgroundColor = [UIColor blueColor];
            break;
            
        case 3:
            _imageView1.backgroundColor = [UIColor grayColor];
            break;
            
        case 4:
            _imageView1.backgroundColor = [UIColor orangeColor];
            break;
            
        case 5:
            srand((unsigned int) time(NULL));
            UIColor * color =[UIColor colorWithRed:rand()%255/255.0 green:rand()%255/255.0 blue:rand()%255/255.0 alpha:1];
            
            _imageView1.backgroundColor = color;
            break;
            
    }
    
    int producto = (int) [productos indexOfObject:[productos objectAtIndex:[_pickerView1 selectedRowInComponent:0]]];
    
    switch (producto) {
        case 0:
            _imageView1.image = [UIImage imageNamed:@"PantallaLCD"];
            break;
        
        case 1:
            _imageView1.image = [UIImage imageNamed:@"ipad"];
            break;
            
        default:
            break;
    }
}


@end

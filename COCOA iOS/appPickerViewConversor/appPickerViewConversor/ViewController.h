//
//  ViewController.h
//  appPickerViewConversor
//
//  Created by Axel Roman on 11/04/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

{
    
}
@property (weak, nonatomic) IBOutlet UITextField *cantidadDolares;
@property (weak, nonatomic) IBOutlet UILabel *etiqResultado;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerPaises;

@property (strong, nonatomic) NSArray*tipoDeCambio;

@end


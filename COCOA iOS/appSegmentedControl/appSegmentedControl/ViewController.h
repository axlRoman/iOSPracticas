//
//  ViewController.h
//  appSegmentedControl
//
//  Created by Axel Roman on 24/04/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmendControlVehiculos;
@property (weak, nonatomic) IBOutlet UIImageView *imagenesVehiculos;

- (IBAction)segmendValueChange:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmendControlAjustes;
- (IBAction)ajustesValueChange:(id)sender;

@end


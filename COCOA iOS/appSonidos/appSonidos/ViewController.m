//
//  ViewController.m
//  appSonidos
//
//  Created by Cristian Gaytan on 23/04/24.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
{
    AVAudioPlayer *audioPlayer;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path=[NSString stringWithFormat:@"%@/relax.mp3",[[NSBundle mainBundle]resourcePath]];
    
    NSURL *sonidoUrl =[NSURL fileURLWithPath:path];
    
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:sonidoUrl error:nil];
    audioPlayer.volume=10.0;
    [audioPlayer play];
    
}


@end

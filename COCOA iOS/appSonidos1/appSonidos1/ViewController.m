//
//  ViewController.m
//  appSonidos1
//
//  Created by Axel Roman on 24/04/24.
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
    audioPlayer.volume=20.0;
    [audioPlayer play];
    
}

- (IBAction)btnPlay:(UIButton *)sender {
    [audioPlayer play];
}
- (IBAction)btnPausa:(UIButton *)sender {
    [audioPlayer pause];
}
- (IBAction)btnStop:(UIButton *)sender {
    [audioPlayer stop];
}

@end

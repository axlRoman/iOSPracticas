//
//  DibujarConTouch.m
//  appDibujarEnVista
//
//  Created by Axel Roman on 13/05/24.
//

#import "DibujarConTouch.h"

@implementation DibujarConTouch {
    UIBezierPath *path;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
 */
- (id)initWithCoder:(NSCoder *) Decoder{
    if(self = [super initWithCoder:Decoder]){
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor purpleColor]];
        path = [UIBezierPath bezierPath];
        [path setLineWidth:2.0];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [[UIColor colorWithRed:0 green:0 blue:0.75 alpha:1.0] setStroke];
    [path stroke];
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint punto = [touch locationInView:self];
    [path moveToPoint:punto];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint punto = [touch locationInView:self];
    [path addLineToPoint:punto];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self touchesEnded:touches withEvent:event];
}

@end

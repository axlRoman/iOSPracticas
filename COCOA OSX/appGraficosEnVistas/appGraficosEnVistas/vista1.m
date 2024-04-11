//
//  vista1.m
//  appGraficosEnVistas
//
//  Created by Axel Roman on 21/03/24.
//

#import "vista1.h"

@implementation vista1

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    NSRect rectangulo = [self bounds];
    //[[NSColor orangeColor] set];
    
    //[[NSColor colorWithDeviceRed:0.1f green:0.785f blue:0.785f alpha:1.0f]set];
    
    //DEFINICIENDO UNA VARIABLE
//    NSColor *miColor = [NSColor colorWithCalibratedRed:0.0 green:0.5 blue:0 alpha:1.0];
//    [miColor set];
    NSColor *miColor = [NSColor colorWithCalibratedRed:0.7 green:0.5 blue:0.8 alpha:1.0];
    [miColor set];

    
    [NSBezierPath fillRect:rectangulo];//PINTAMOS EL RECTANGULO
    [self dibujarGradienteRadial];
}

- (void) dibujarGradienteRadial{
    NSRect bounds = [self bounds];
    NSGradient *gradiente = [[NSGradient alloc] initWithStartingColor:[NSColor yellowColor] endingColor:[NSColor redColor]];
    
//    NSPoint centerPoint = NSMakePoint(bounds.size.width/2, bounds.size.height/2);
    NSPoint centerPoint = NSMakePoint(NSMidX(bounds), NSMidY(bounds));
    
    NSPoint otherPoint = NSMakePoint(centerPoint.x + 60, centerPoint.y + 60);
    
    CGFloat firstRadius = MIN( ( (bounds.size.width/2)-2.0), ( (bounds.size.height/2)-2.0) );
    
    [gradiente drawFromCenter:centerPoint radius:firstRadius toCenter:otherPoint radius:2 options:0];
    
    //[self dibujaTriangulo];
    
    //De la pagina
    //https://developer.apple.com/library/archive/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/dq_shadings/dq_shadings.html#//apple_ref/doc/uid/TP30001066-CH207-TPXREF101
    //Implementar diferentes alternativas de gradientes para crear una app que nos permita visualizar varios estilos
    
}


//TAREA PARA MAÑANA, DIBUJAR EN VARIAS VISTAS LOS OBJETOS QUE UTILIZAMOS
//

@end

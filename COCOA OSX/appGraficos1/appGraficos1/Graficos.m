//
//  Graficos.m
//  appGraficos1
//
//  Created by Axel Roman on 15/03/24.
//

#import "Graficos.h"

@implementation Graficos

-(NSPoint) puntosAleatorios
{
    NSPoint result;
    NSRect rec = [self bounds];
    result.x = rec.origin.x + random() % (int) rec.size.width;
    result.y = rec.origin.y + random() % (int) rec.size.height;
    return result;
    
}

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

//    [self dibujarEstrella];
 //   [self dibujarPentagono];
    //[self dibujaLinea];
//    [self dibujaTriangulo];
    
    //[self dibujarGradienteRadial];
//    [self dibujarCurvaBezier1];
    [self dibujarCurvaBezier2];
    //[self dibujaLineas];
}

- (void) dibujaLineas{
    [[NSColor whiteColor]set];
    srandom((unsigned)time(NULL));
    NSBezierPath *path = [[NSBezierPath alloc] init];
    [path setLineWidth:3.0];
    NSPoint p = [self puntosAleatorios];
    [path moveToPoint:p];
    for(int i = 0; i < 20;i++)
    {
        p = [self puntosAleatorios];
        [path lineToPoint:p];
    }
    
    [path stroke];// DIBUJA LAS LINEA
    //[path fill]; //RELLENO DE POLIGONOS CONVEXOS
    
    //DIBUJAR UN TRIANGULO RECTANGULO, UBICARLO EN EL ORIGEN (0,0)
    NSBezierPath *trianglePath = [NSBezierPath bezierPath];
    [trianglePath moveToPoint:NSMakePoint(0, 0)]; // Inicia en el origen
    [trianglePath lineToPoint:NSMakePoint(50, 0)]; // Dibuja la linea horizontal
    [trianglePath lineToPoint:NSMakePoint(0, 50)]; // Dibuja la linea Vertical
    [trianglePath closePath]; // cierra el path del triangulo
        
    [[NSColor blueColor] set]; // Le definimos el color para el triangulo
    [trianglePath fill]; // rellenamos el triangulo con el color azul
}

- (void) dibujaLinea{
    [[NSColor blueColor]set];
    
    [NSBezierPath setDefaultLineCapStyle:NSLineCapStyleButt];
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:5.5];
    [path moveToPoint:NSMakePoint(0, 0)];
    [path lineToPoint:NSMakePoint(                                  self.bounds.size.width/2.0,                                  self.bounds.size.height/2.0)
    ];
    
    [path setLineCapStyle:NSLineCapStyleSquare];//NSLineCapStyleRound];
    [path stroke];
}

- (void) dibujarEstrella{
    [[NSColor yellowColor]set];
    NSBezierPath *starPath = [[NSBezierPath alloc]init];
    [starPath setLineWidth:2.0];
    int star[12][3] = {
        
        {25,15},
        {50,35},
        {75,15},
        {65,50},
        {95,70},
        {60,70},
        {50,100},
        {50,100},
        {40,70},
        {5,70},
        {35,50},
        {25,15}
    };

    NSPoint punto;
    punto.x = star[0][0];
    punto.y = star[0][1];
    [starPath moveToPoint:punto];
    for (int i=1; i<12; i++){
        punto.x = star[i][0];
        punto.y = star[i][1];
        [starPath lineToPoint:punto];
    }
    [starPath stroke];
    [starPath fill];
    
}

-(void) dibujarPentagono{
    [[NSColor yellowColor]set];
    NSBezierPath *pentagonoPath = [[NSBezierPath alloc]init];
    [pentagonoPath setLineWidth:3.0];
    int star[6][3] = {
        {100, 20},
        {300, 20},
        {400, 150},
        {200, 300},
        {10,150},
        {100,20}
    };

    NSPoint punto;
    punto.x = star[0][0];
    punto.y = star[0][1];
    [pentagonoPath moveToPoint:punto];
    for (int i=1; i<6; i++){
        punto.x = star[i][0];
        punto.y = star[i][1];
        [pentagonoPath lineToPoint:punto];
    }
    [pentagonoPath stroke];
    //[pentagonoPath fill];
}
- (void) dibujaTriangulo{
    [[NSColor orangeColor]set];
    NSBezierPath *path = [[NSBezierPath alloc]init];
    [path setLineWidth:2.5];
    
/*    int fig[4][3] = {{5,5},
                     {100,5},
                     {5,100},
                     {5,5}};
  *
    NSPoint punto;
    punto.x = fig[0][0];
    punto.y = fig[0][1];
    [path moveToPoint:punto];
    for(int i=1; i<4; i++){
        punto.x = fig[i][0];
        punto.y = fig[i][1];
        [path lineToPoint:punto];
    }
    */
    
    NSPoint punto;
    punto.x = 5;
    punto.y = 5;
    [path moveToPoint:punto];
    
    
    punto.x = 100;
    punto.y = 5;
    [path lineToPoint:punto];
    
    
    punto.x = 5;
    punto.y = 100;
    [path lineToPoint:punto];
    
    
    punto.x = 5;
    punto.y = 5;
    [path lineToPoint:punto];
    
    [path stroke];
    [path fill];
    
//    //DIBUJAR UN TRIANGULO RECTANGULO, UBICARLO EN EL ORIGEN (0,0)
//    NSBezierPath *trianglePath = [NSBezierPath bezierPath];
//    [trianglePath moveToPoint:NSMakePoint(0, 0)]; // Inicia en el origen
//    [trianglePath lineToPoint:NSMakePoint(50, 0)]; // Dibuja la linea horizontal
//    [trianglePath lineToPoint:NSMakePoint(0, 50)]; // Dibuja la linea Vertical
//    [trianglePath closePath]; // cierra el path del triangulo
//
//    [[NSColor purpleColor] set]; // Le definimos el color para el triangulo
//    [trianglePath fill]; // rellenamos el triangulo con el color azul
}

- (void) dibujarGradienteRadial{
    NSRect bounds = [self bounds];
    NSGradient *gradiente = [[NSGradient alloc] initWithStartingColor:[NSColor yellowColor] endingColor:[NSColor redColor]];
    
//    NSPoint centerPoint = NSMakePoint(bounds.size.width/2, bounds.size.height/2);
    NSPoint centerPoint = NSMakePoint(NSMidX(bounds), NSMidY(bounds));
    
    NSPoint otherPoint = NSMakePoint(centerPoint.x + 160, centerPoint.y + 160);
    
    CGFloat firstRadius = MIN( ( (bounds.size.width/2)-2.0), ( (bounds.size.height/2)-2.0) );
    
    [gradiente drawFromCenter:centerPoint radius:firstRadius toCenter:otherPoint radius:2 options:0];
    
    [self dibujaTriangulo];
    
    //De la pagina
    //https://developer.apple.com/library/archive/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/dq_shadings/dq_shadings.html#//apple_ref/doc/uid/TP30001066-CH207-TPXREF101
    //Implementar diferentes alternativas de gradientes para crear una app que nos permita visualizar varios estilos
    
}


- (void) dibujarCurvaBezier1{
    [[NSColor blueColor]set];
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineWidth:5.0];
    [path moveToPoint:NSMakePoint(0.0, 0.0)];
    [path lineToPoint:NSMakePoint(100.0, 100.0)];
    [path curveToPoint:NSMakePoint(180.0, 210.0) controlPoint1:NSMakePoint(60.0, 20.0) controlPoint2:NSMakePoint(280.0, 100.0)];
    [path appendBezierPathWithRect:NSMakeRect(20.0, 160.0, 80.0, 50.0)];
    [path setLineCapStyle:NSLineCapStyleRound];
    [path stroke];
}

- (void) dibujarCurvaBezier2 {
    [[NSColor blueColor]set];
    NSPoint p1 = NSMakePoint(300, 300);
    NSPoint p2 = NSMakePoint(200, 100);
    NSPoint p3 = NSMakePoint(100, 300);
    
    //PUNTOS DE CONTROL
    NSPoint c1 = NSMakePoint(220, 320);
    NSPoint c2 = NSMakePoint(200, 200);
    
    //construimos el path para el triangulo
    NSBezierPath *bezier = [NSBezierPath bezierPath];
    [bezier moveToPoint:p1];
    [bezier lineToPoint:p2];
    [bezier lineToPoint:p3];
    //[bezier lineToPoint:p1];
    [bezier curveToPoint:p1 controlPoint1:c1 controlPoint2:c2];
    //[bezier closePath];
    [bezier stroke];
    [[NSColor whiteColor]set];
    [bezier fill];
}

@end

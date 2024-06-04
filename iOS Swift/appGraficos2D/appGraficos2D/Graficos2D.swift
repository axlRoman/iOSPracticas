//
//  Graficos2D.swift
//  appGraficos2D
//
//  Created by Axel Roman on 28/05/24.
//

import UIKit

class Graficos2D: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let canvas = UIGraphicsGetCurrentContext()
        
        canvas?.setLineWidth(3.0)
//        canvas?.setStrokeColor(UIColor.blue.cgColor)
//        #colorLiteral(
        canvas?.setStrokeColor(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        
        canvas?.move(to: CGPoint(x: 50, y: 50))
        canvas?.addLine(to: CGPoint(x: rect.width-50, y: rect.height-50))
        
        canvas?.strokePath()
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let componentes:[CGFloat] = [CGFloat(Float.random(in:0.0..<1.0)), CGFloat(drand48()), 0.0, 1.0]
        let color = CGColor(colorSpace: colorSpace, components: componentes)
        
        canvas?.setStrokeColor(color!)
        canvas?.move(to: CGPoint (x: 0, y: 0))
        canvas?.addLine(to: CGPoint(x: 200, y: 200))
        canvas?.strokePath()
        
        //Rectangulo
        //let rectangulo = CGRect(x: rect.width/2, y: rect.height/2, width: rect.width-50, height: rect.height/3)
        
        let rectangulo = CGRect(x: rect.width/2, y: rect.height/2, width: 100, height: 100)
        canvas?.setStrokeColor(UIColor.red.cgColor)
        canvas?.addRect(rectangulo)
        canvas?.strokePath()
        canvas?.setFillColor(UIColor.cyan.cgColor)
        canvas?.fill(rectangulo)
        
        
        // Obtén el tamaño del rectángulo
        let rectWidth = rect.width
        let rectHeight = rect.height

        // Calcula el punto de inicio y el punto final
        let startPoint = CGPoint(x: 10, y: rectHeight / 2)
        let endPoint = CGPoint(x: rectWidth, y: rectHeight / 2)

        // Calcula los puntos de control en relación al centro
        let controlPoint1 = CGPoint(x: rectWidth / 2 + 100, y: rectHeight / 4 + 100)
        let controlPoint2 = CGPoint(x: rectWidth / 2 - 100, y: 3 * rectHeight / 4 - 100)

        // Mueve al punto de inicio
        canvas?.move(to: startPoint)

        // Añade la curva de Bézier con los puntos de control y el punto final
        canvas?.addCurve(to: endPoint, control1: controlPoint1, control2: controlPoint2)

        // Traza el camino para renderizar la curva
        canvas?.strokePath()

//        //Curvas de bezier
//        canvas?.move(to: CGPoint(x: 500, y: 10))
//        canvas?.addCurve(to: CGPoint(x: rect.width-500, y: rect.height-10), control1: CGPoint(x: 500, y: 400), control2: CGPoint(x: -200,y: 400))
//
//        canvas?.strokePath()
        
//        AGREGAR LA addQuadCurve(to:controlPoint:)
        
        //Gradiente Radial
        
        let posicion1:[CGFloat]=[0.0,0.5,1.0]
        let colores = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor]
        let colorSpace1 = CGColorSpaceCreateDeviceRGB()
        let gradiente = CGGradient(colorsSpace: colorSpace1, colors: colores as CFArray, locations: posicion1)
        
        var startPoint1 = CGPoint()
        var endPoint1 = CGPoint()
        
        startPoint1.x = 150
        startPoint1.y = 300
        endPoint1.x = 300
        endPoint1.y = 400
        
        let startRadio : CGFloat = 10
        let endRadio : CGFloat = 75.5
        
        canvas?.drawRadialGradient(gradiente!, startCenter: startPoint1, startRadius: startRadio, endCenter: endPoint1, endRadius: endRadio, options: CGGradientDrawingOptions.drawsBeforeStartLocation)
    }
    

}

//
//  CurvasBezier.swift
//  appGraficos2Denview
//
//  Created by Axel Roman on 30/05/24.
//

import UIKit

class CurvasBezier: UIView {
    
    public var x1:Int = 0
    internal var y1:Int = 0
    public var x2:Int = 0
    public var y2:Int = 0
    
    internal var pcx1:Int = 0
    public var pcy1:Int = 0
    public var pcx2:Int = 0
    public var pcy2:Int = 0
    
    public var ancho:Int = 0
    public var alto:Int = 0
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        ancho = Int(rect.width)
        alto = Int(rect.height)
        
        let canvas = UIGraphicsGetCurrentContext();
        canvas?.setLineWidth(3.0)
        canvas?.setStrokeColor(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        
        
        
        //Curvas de bezier
        canvas?.move(to: CGPoint(x: x1, y: y1))
        canvas?.addCurve(to: CGPoint(x: x2, y: y2), control1: CGPoint(x: pcx1, y: pcy1), control2: CGPoint(x: pcx2, y: pcy2))
        
        canvas?.strokePath()
    }
    

}

//
//  ViewController.swift
//  appGraficos2Denview
//
//  Created by Axel Roman on 30/05/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var canvas: CurvasBezier!
    
    @IBOutlet weak var txtX1: UITextField!
    @IBOutlet weak var txtY1: UITextField!
    @IBOutlet weak var txtX2: UITextField!
    @IBOutlet weak var txtY2: UITextField!
    
    @IBOutlet weak var PCX1: UITextField!
    @IBOutlet weak var PCY1: UITextField!
    @IBOutlet weak var PCX2: UITextField!
    @IBOutlet weak var PCY2: UITextField!
    
    @IBOutlet weak var labAncho: UILabel!
    @IBOutlet weak var labAlto: UILabel!
    
    @IBOutlet weak var btnAnchoAlto: UIButton!
    
    @IBOutlet weak var btnDibujarCurvaBezier: UIButton!
    @IBAction func btnDibujarCurvaBezier(_ sender: Any) {
        self.canvas.x1 = Int(txtX1.text!)!
        self.canvas.y1 = Int(txtY1.text!)!
        canvas.x2 = Int(txtX2.text!)!
        canvas.y2 = Int(txtY2.text!)!
        
        canvas.pcx1 = Int(PCX1.text!)!
        canvas.pcy1 = Int(PCY1.text!)!
        canvas.pcx2 = Int(PCX2.text!)!
        canvas.pcy2 = Int(PCY2.text!)!
        
        canvas.setNeedsDisplay()
    }
    @IBAction func btnAnchoAlto(_ sender: Any) {
        labAncho.text! += " " + String(self.canvas.ancho)
        labAlto.text! += " " + String(self.canvas.alto)
        btnAnchoAlto.isEnabled = false
    }
    //IMPLEMENTAR EL BOTON PARA LA CURVA DE BEZIER QUAD
    
    @IBOutlet weak var btnDibujarCurvaQuad: UIButton!
    @IBAction func btnDibujarCurvaQuad(_ sender: Any) {
        self.canvas.x1 = Int(txtX1.text!)!
        self.canvas.y1 = Int(txtY1.text!)!
        canvas.x2 = Int(txtX2.text!)!
        canvas.y2 = Int(txtY2.text!)!
        
        canvas.pcx1 = Int(PCX1.text!)!
        canvas.pcy1 = Int(PCY1.text!)!
            
        canvas.setNeedsDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configurar delegados
                txtX1.delegate = self
                txtY1.delegate = self
                txtX2.delegate = self
                txtY2.delegate = self
                PCX1.delegate = self
                PCY1.delegate = self
                PCX2.delegate = self
                PCY2.delegate = self

                // Inicializar estado de los botones
                actualizarEstadoBotones()

    }
    // Método delegado para detectar cambios en los campos de texto
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.actualizarEstadoBotones()
            }
            return true
        }

        func actualizarEstadoBotones() {
            // Verificar si todos los campos están llenos para habilitar el botón de la curva cúbica
            let todosCamposLlenos = !txtX1.text!.isEmpty && !txtY1.text!.isEmpty && !txtX2.text!.isEmpty && !txtY2.text!.isEmpty && !PCX1.text!.isEmpty && !PCY1.text!.isEmpty && !PCX2.text!.isEmpty && !PCY2.text!.isEmpty
            btnDibujarCurvaBezier.isEnabled = todosCamposLlenos

            // Verificar si los campos necesarios están llenos para habilitar el botón de la curva cuadrática
            let camposCuadraticaLlenos = !txtX1.text!.isEmpty && !txtY1.text!.isEmpty && !txtX2.text!.isEmpty && !txtY2.text!.isEmpty && !PCX1.text!.isEmpty && !PCY1.text!.isEmpty
            btnDibujarCurvaQuad.isEnabled = camposCuadraticaLlenos

            // El botón de ancho y alto está habilitado por defecto al inicio y se deshabilita después de usarse
            btnAnchoAlto.isEnabled = !btnAnchoAlto.isEnabled ? false : true
        }

}


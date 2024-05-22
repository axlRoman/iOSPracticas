//
//  ViewController.swift
//  appCalculadora
//
//  Created by Axel Roman on 20/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    func decimalToBinary(_ number: Int) -> String {
        var num = number
        var binaryString = ""
        
        // Manejo del caso especial para 0
        if num == 0 {
            return "0"
        }
        
        // Si el número es negativo, obtenemos su complemento a dos
        if num < 0 {
            num = -num
            var complement = String(num, radix: 2)
            
            // Aseguramos que el complemento tenga el mismo número de bits que necesitamos
            while complement.count < 32 {
                complement = "1" + complement
            }
            
            // Invertimos cada bit del complemento
            var invertedComplement = ""
            for char in complement {
                if char == "1" {
                    invertedComplement += "0"
                } else {
                    invertedComplement += "1"
                }
            }
            
            // Convertimos el complemento invertido a entero y le sumamos 1
            if let invertedNum = Int(invertedComplement, radix: 2) {
                num = invertedNum + 1
            }
        }
        
        // Convertimos el número positivo a binario
        while num > 0 {
            let remainder = num % 2
            binaryString = String(remainder) + binaryString
            num /= 2
        }
        
        return binaryString
    }

    
    @IBOutlet weak var etqNumero: UILabel!
    
    @IBOutlet weak var slider1: UISlider!
    
    @IBOutlet weak var stepper1: UIStepper!
    
    
    @IBOutlet weak var segmento1: UISegmentedControl!
    
    @IBOutlet weak var txtSalida: UITextField!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // Actualizar el texto del label con el nuevo valor del slider
//        etqNumero.text = String(Int(sender.value))
        etqNumero.text = "\(String(describing: lround(Double(sender.value))))"
        stepper1.value = Double(sender.value)
        
        self.segmentSeleccionado(segmento1)
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        etqNumero.text = "\(String(describing: lround(Double(sender.value))))"
        slider1.value = Float(Double(stepper1.value))
        
        self.segmentSeleccionado(segmento1)
    }
    
    
    @IBAction func segmentSeleccionado(_ sender: UISegmentedControl) {
        let indice : Int = sender.selectedSegmentIndex
        
        var num : Int = Int(etqNumero.text!)!
        
        if indice == 0 {
            //verificar la conversion de numeros binarios negativos
            var n = decimalToBinary(num)
            txtSalida.text = n
        }
        if indice  == 1 {
            let n = String(num, radix: 8)
            txtSalida.text = n
        }
        if indice == 2{
            let n = String(num, radix: 16)
            txtSalida.text = n
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        etqNumero.text = String(Int(slider1.value))
    }


}


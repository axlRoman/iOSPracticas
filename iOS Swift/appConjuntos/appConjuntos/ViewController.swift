//
//  ViewController.swift
//  appConjuntos
//
//  Created by Axel Roman on 21/05/24.
//

import UIKit

class ViewController: UIViewController {

    var setA = Set<String>()
    var setB = Set<String>()
    
    
    @IBOutlet weak var txtConjuntoA: UITextField!
    
    @IBOutlet weak var txtConjuntoB: UITextField!
    
    @IBOutlet weak var labResultado: UILabel!
    
    @IBOutlet weak var btnAsignarSetA: UIButton!
    
    @IBOutlet weak var btnAsignarSetB: UIButton!
    
    @IBOutlet weak var btnUnion: UIButton!
    @IBAction func txtSetAChanged(_ sender: UITextField) {
        // Verifica si el texto del UITextField no está vacío
        if let texto = sender.text, !texto.isEmpty {
            // Habilita el botón si el texto no está vacío
            btnAsignarSetA.isEnabled = true
        } else {
            // Deshabilita el botón si el texto está vacío
            btnAsignarSetA.isEnabled = false
        }
        
//        if !txtConjuntoA.text!.isEmpty {
//            btnAsignarSetA.isEnabled = true
//        }
    }

    @IBAction func btnAsignarSetA(_ sender: UIButton) {
        if !txtConjuntoA.text!.isEmpty{
            let conjunto:[String] = txtConjuntoA.text!.components(separatedBy: ",")
            setA = Set<String>()
            //probar si el atributo aplica en su construccion
            for valor in conjunto {
                setA.insert(valor)
            }
            
            //Checar si se require algo mas
            
            txtConjuntoB.isEnabled = true;
        }
    }
    
    
    @IBAction func txtSetBChanged(_ sender: UITextField) {
        if let texto = sender.text, !texto.isEmpty {
            // Habilita el botón si el texto no está vacío
            btnAsignarSetB.isEnabled = true
        } else {
            // Deshabilita el botón si el texto está vacío
            btnAsignarSetB.isEnabled = false
        }


//        if !txtConjuntoB.text!.isEmpty {
//            btnAsignarSetB.isEnabled = true
//        }
    }
    @IBAction func btnAsignarSetB(_ sender: UIButton) {
        if !txtConjuntoB.text!.isEmpty{
            let conjunto:[String] = txtConjuntoB.text!.components(separatedBy: ",")
            setB = Set<String>()
            //probar si el atributo aplica en su construccion
            for valor in conjunto {
                setB.insert(valor)
            }
            
            //Checar si se require algo mas
            
            btnUnion.isEnabled = true
        }
    }
    
    
    @IBAction func btnUnion(_ sender: UIButton) {
        let unionAB = setA.union(setB).sorted()
        
        labResultado.text = unionAB.joined(separator: ",")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Asigna el método txtSetAChanged al evento editingChanged del UITextField
        txtConjuntoA.addTarget(self, action: #selector(txtSetAChanged(_:)), for: .editingChanged)
        txtConjuntoB.addTarget(self, action: #selector(txtSetBChanged(_:)), for: .editingChanged)
                

    }


}


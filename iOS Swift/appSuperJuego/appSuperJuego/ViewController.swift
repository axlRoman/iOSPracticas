//
//  ViewController.swift
//  appSuperJuego
//
//  Created by Axel Roman on 17/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numero: UITextField!
    
    
    @IBOutlet weak var vidas: UILabel!
    
    @IBOutlet weak var mensaje: UILabel!
    
    var numRandom = 0
    var vida = 0
    
    func inicializar(){
        numRandom = Int.random(in: 0..<10) //0...9)
        numero.text = ""
        vida = 3
        vidas.text = String(vida)
        mensaje.text = "Selecciona un numero del 0 al 9"
        self.view.backgroundColor = #colorLiteral(red: 0.9718178462, green: 0.7706383501, blue: 1, alpha: 1) //#colorLiteral(
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        guard let guessedNumber = Int(numero.text ?? "") else {
            // Manejo de error si el usuario no ingresa un número válido
            return
        }

        if guessedNumber == numRandom {
            mensaje.text = "¡GANASTE! FELICIDADES. EL NÚMERO ERA \(numRandom)"
            self.view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            let difference = abs(numRandom - guessedNumber)
            var hint = ""

            if difference <= 1 {
                hint = "Estás muy cerca."
            } else if difference <= 3 {
                hint = "Estás cerca."
            } else if difference <= 5 {
                hint = "Estás lejos."
            } else {
                hint = "Estás muy lejos."
            }

            if vida == 1 {
                mensaje.text = "Fallaste. El número era \(numRandom). \(hint) Vuelve a intentarlo."
                self.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
                alerta()
            } else {
                vida -= 1
                vidas.text = String(vida)
                mensaje.text = "Fallaste. \(hint) Vuelve a intentarlo."
                numero.text = ""
            }
        }
    }

    
//    @IBAction func btnPlay(_ sender: UIButton) {
//        if numero.text == String(numRandom) {
//            mensaje.text = "GANASTE, FELICIDADES NUMERO ERA \(numRandom)"
//            self.view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
//        }
//        else{
//            if vida == 1{
//                mensaje.text = "Fallaste el numero era \(numRandom), vuelve a intentarlo"
//                self.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
//                alerta()
//            }
//            else{
//                vida -= 1
//                vidas.text = String(vida)
//                mensaje.text = "Vuelve a intentarlo"
//                numero.text = ""
//            }
//        }
//    }
    
    func alerta(){
        let alerta = UIAlertController(title: "SUPER GAME", message: "Intentalo Otra Vez", preferredStyle: .alert)
        let jugarOtraVez = UIAlertAction(title: "Juega, Play", style: .default)
        alerta.addAction(jugarOtraVez)
        self.present(alerta, animated: true, completion: nil)
    }
    
    
    @IBAction func btnOtro(_ sender: UIButton) {
        //inicializar()
        self.viewDidLoad()
    }
    
    
    @IBAction func btnAdios(_ sender: UIButton) {
        UIControl().sendAction(#selector(NSXPCConnection .suspend), to: UIApplication.shared, for: nil)
//        UIControl(#selector(NSXPCConnection .suspend), to: uiapli)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inicializar()
        
        
    }


}


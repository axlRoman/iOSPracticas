//
//  ViewController.swift
//  appPickerViewBasico
//
//  Created by Axel Roman on 22/05/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource , UIPickerView{

    let carros = ["Toyota", "Honda", "Ford"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pickerView1 = UIPickerView()
        pickerView1.delegate = self
        texto1.inputView = pickerView1
        texto1.text = "Click y selecciona tu carro"
        texto1.textAlignment = .center
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return carros[row]
    }


}


//
//  ViewController.swift
//  appPickerViewProductos
//
//  Created by Axel Roman on 27/05/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let carro_color = [["VW","Toyota","Ford","Chrysler","Honda","Mazda","RAM"],["🚘","🚕","🚗"]]
    
    let imagenPorOpcion: [String: String] = [
        "VW": "VW polo",
        "Toyota": "TOYOTA",
        "Ford": "FORD1",
        "Chrysler": "chrysler",
        "Honda": "honda",
        "Mazda": "mazda1",
        "RAM": "ramn1"
    ]

//    let imagenPorOpcion = [["VW","TOYOTA","FORD1","BICI_1","moto1","mazda","camioneta1"]]

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var texto1: UITextField!
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    @IBOutlet weak var imagenes: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView1.delegate = self
        pickerView1.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return carro_color[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return carro_color[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let carro = carro_color[0][pickerView.selectedRow(inComponent: 0)]
        let color = carro_color[1][pickerView.selectedRow(inComponent: 1)]
        
        label1.text = carro + " " + color
        texto1.text = carro + " " + color
        
       // imagenes.image = UIImage(named: imagenPorOpcion[row])
        
        if let imagen = imagenPorOpcion[carro_color[0][pickerView.selectedRow(inComponent: 0)]] {
                    imagenes.image = UIImage(named: imagen)
                }
    }


}


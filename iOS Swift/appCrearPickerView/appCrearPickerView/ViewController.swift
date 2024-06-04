//
//  ViewController.swift
//  appCrearPickerView
//
//  Created by Axel Roman on 24/05/24.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var texto1: UITextField!
    
    
    let banderas = ["Mexico🇲🇽","USA🇺🇸","Francia🇫🇷","Ucrania🇺🇦","Cuba🇨🇺","Bahamas🇧🇸"]
    
    var banderaSeleccionada : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        crearPickerViewBanderas()
        crearToolBar()
    }

    func crearPickerViewBanderas()
    {
        let banderasPicker = UIPickerView()
        banderasPicker.delegate = self
        texto1.inputView = banderasPicker
        
    }
    
    func crearToolBar()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        toolBar.barTintColor = .green
        toolBar.tintColor = .black
        let botonOcultar = UIBarButtonItem(title: "🔻", style: .plain, target: self, action: #selector(ViewController.dismissKeyBoard))
        
        toolBar.setItems([botonOcultar], animated: true)
        toolBar.isUserInteractionEnabled = true
        
        let botonAdios = UIBarButtonItem(title: "👋", style: .plain, target: self, action: #selector(ViewController.adios))
        
        toolBar.setItems([botonAdios], animated: false)
        
        let espacio = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        
        self.toolbarItems = [botonOcultar,espacio,botonAdios]
        toolBar.setItems(toolbarItems, animated: false)
        texto1.inputAccessoryView = toolBar
        
    }
    @objc func dismissKeyBoard()
    {
        view.endEditing(true)
    }
    
    @objc func adios(){
        UIControl().sendAction(#selector(NSXPCConnection.suspend),to:UIApplication.shared, for: nil)
        
        //UIControl().sendActions(#selector(NSXPCConnection.suspend), to : UIApplication.shared, for: nil)
    }
    
}//FIN DEL VIEW CONTROLLER

extension CGFloat
{
    static func random() -> CGFloat
    {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
}

extension UIColor{
    static func random() -> UIColor
    {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }

}

extension ViewController:UIPickerViewDelegate, UIPickerViewDataSource{
    //Components = columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return banderas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return banderas[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        banderaSeleccionada = banderas[row]
        texto1.backgroundColor = UIColor.random()
        texto1.text = banderaSeleccionada
        self.view.backgroundColor = UIColor.random()
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label : UILabel
        if let view = view as? UILabel{
            label = view
        }
        else{
            label = UILabel()
        }
        label.textColor = UIColor.random()
        label.textAlignment = .center
        label.font = UIFont(name: "Futura", size:32)
        label.text = banderas[row]
        return label
            
    }
}



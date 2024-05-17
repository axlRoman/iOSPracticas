//
//  Clase.swift
//  appClasesyStructSwift
//
//  Created by Axel Roman on 02/05/24.
//

import Foundation
struct Clase
{
    var a:Int
    var b        :    Int
    static var cont  : Int = 0
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
       // Clase.cont = Clase.cont + 1
        Clase.cont += 1
    }
    func imprimir()
    {
        print("Valor a = \(a)")
        print("Valor b = ",b)
        print("Valor de cont = \(Clase.cont)")
    }
}

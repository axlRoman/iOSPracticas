//
//  main.swift
//  appClasesyStructSwift
//
//  Created by Axel Roman on 02/05/24.
//

import Foundation
// LAS CLASES SON REFERENCE TYPE
// LAS STRUCT SON VALUE TYPE
/*
class Clase
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
*/
let objeto = Clase(a: 50, b: 60)
objeto.imprimir()

var objetoAux = Clase(a: 1000, b: 2000) //objeto
objetoAux.imprimir()

//print("Direccion de Objeto : \(Unmanaged.passUnretained(objeto).toOpaque())")
//
//print("Direccion de ObjetoAux : \(Unmanaged.passUnretained(objetoAux).toOpaque())")
//
//print("Valor de a = \(objeto.a)")

objetoAux.a = 1234

print("Valor de a = \(objeto.a)")

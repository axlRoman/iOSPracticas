//
//  main.swift
//  appBasica1
//
//  Created by Axel Roman on 26/04/24.
//

import Foundation

//print("Hello, World!")

var n1 = 105
var n2 = 50

print("n1= ", n1)
print("n1= \(n1), n2 = \(n2)")
        //XOR
var resul = n1 ^ n2

print("Resutado \(n1) ^ \(n2) = \(resul)")

let binarioResul = String(resul, radix:2)
print("\t\t En binario = \(resul) = \(binarioResul)\n\n")

var num1 = 255
let bin = String(num1, radix: 2)
print("\t Numero: \(num1) = \(bin) en binario")

let hexa = String(num1, radix: 16)
print("\t Numero: \(num1) = \(hexa) en hexadecimal")

let octal = String(num1, radix: 8)
print("\t Numero: \(num1) = \(octal) en octal")

let binario2 = "01100100"
//convertir a hexa y excribirlo

let numHexa = String(Int(binario2, radix: 2)!, radix: 16)
print("Binario: \(binario2) = \(numHexa) hexadecimal \u{1F336}")// \u{1F32D}")// \u{2708}")



// Convertir el binario a entero
if let decimal = Int(binario2, radix: 2) {
    // Convertir el entero a hexadecimal
    let hexadecimal = String(decimal, radix: 16)
    print("El número binario \(binario2) en hexadecimal es: 0x\(hexadecimal)")
} else {
    print("El número binario ingresado es inválido.")
}

let numHexa2 = "face"
//convertir a binario

let binario3 = String(Int(numHexa2, radix: 16)!, radix: 2)
print("Hexadecimal: \(numHexa2) = \(binario3) binario \u{1F32D}")// \u{2708}")

let decimal = String(Int(numHexa2, radix: 16)!, radix: 10)
print("Hexadecimal: \(numHexa2) = \(decimal) decimal \u{1F369}")

// Convertir el hexadecimal a entero
if let decimal = Int(numHexa2, radix: 16) {
    // Convertir el entero a binario
    let binario = String(decimal, radix: 2)
    print("El número hexadecimal '\(numHexa2)' en binario es: \(binario)")
} else {
    print("El número hexadecimal ingresado es inválido.")
}


//RANGOS
print("RANGO CERRADO")
let rangoCerrado = ...5
print(rangoCerrado.contains(-2147483649))
print(rangoCerrado.contains(6))
print(rangoCerrado.contains(4))

//MANEJO DE CADENAS
var str = "TEC LAGUNA"
var resultado: String = ""
let caracteres = Array(str)
for i in 0..<caracteres.count{
    let car = caracteres[i]
    resultado += car.lowercased()
    //resultado += "🌶"
    
}
print("\(resultado) 🌶")

//FUNCIONES
func mayorMenor(array:[Int]) -> (mayor:Int, menor:Int)
{
    var menor = array[0]
    var mayor = array[0]
    for val in array[1..<array.count]
    {
        if val < menor{
            menor = val
        } else if val > mayor {
            mayor = val
        }
    }
    return (mayor, menor)
}

let funcion = mayorMenor(array: [87,14,2,99,27,100])
print("Valor MAYOR: \(funcion.mayor) Valor MENOR: \(funcion.menor)")

//INVESTIGAR QUE ES: guard

//leer tuplas en tutorials point
//leer clases
//leer estructuras

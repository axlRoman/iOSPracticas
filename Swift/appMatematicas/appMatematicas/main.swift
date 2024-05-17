//
//  main.swift
//  appMatematicas
//
//  Created by Axel Roman on 02/05/24.
//

import Foundation

class Matematicas {
    //Factorial recursivo
    static func factorialRecursivo(n: Int) -> Int {
        if n == 0 || n == 1{
            return 1
        } else {
            return n * factorialRecursivo(n: n - 1)
        }
    }

    static func factorialIterativo(n: Double) -> Double {
        var resultado : Double = 1
        if n == 0 || n == 1{
            return 1
        }
        else{
            for i in 1...Int(n) {
                resultado *= Double(i)
            }
        }
        return resultado
    }
    
    static func esPrimo(n : Int) -> Bool{
//        if n <= 1 {
//            return false
//        }
        var esprimo = true
        var divisor = 2
        
        while divisor * divisor <= n {
            if n % divisor == 0 {
//                return false
                esprimo = false
            }
            divisor += 1
        }
        
        return esprimo
    }
    
    //Diseñe un metodo para resolver la serie que resuelve
    //la constante matematica e utilizando la sig. serie
    // e = 1 + 1/1! + 1/2! + 1/3! + ...
    static func calcularE() -> Double {
        var e: Double = 1.0
        var factorial: Double = 1.0
        var terminado = false
        
        var i = 1
        while !terminado {
            factorial *= Double(i)
            let termino = 1.0 / factorial
            e += termino
            
            // Verificar si e es igual o cercano a 2.72
            if e >= exp(1.0) {
                terminado = true
            }
            
            i += 1
        }
        
        return e
    }

    //Diseñe un metodo para determinar si un año es
    //o no bisiesto, utilice el operador ternario
    static func esBisiesto(_ año: Int) -> Bool {
        return (año % 4 == 0 && año % 100 != 0) || año % 400 == 0 ? true : false
    }
    


}


//IMPLEMENTAR LA APP. PARA USAR NUMEROS ALEATORIOS
//SOLICITAR EL NUMERO AL USUARIO
//COMO CAPTURAR LA ENTRADA DESDE EL TECLADO
print("Numero: ", terminator: "")
//var num : String = readLine() ?? String(5)
//var num : String = readLine()!
//var num : Int? = readLine()
var num : Int? = Int(readLine()!)
print("\tDato capturado = \(num!)")

var fact = Matematicas.factorialRecursivo(n: num!)
print("Factorial de \(num!) = \(fact)")

var esprimo = Matematicas.esPrimo(n: num!)

//if esprimo{
//    print("El numero \(num!) es primo")
//}
//else{
//    print("El numero \(num!) no es primo")
//}

let men = esprimo ? "Si es" : "no es"
print(men)

print(esprimo ? "El numero \(num!) es primo" : "El numero \(num!) no es primo")

// Ejemplo de uso
// Ejemplo de uso
//var resultadoE = Matematicas.calcularE(<#T##self: Matematicas##Matematicas#>)
print("e =", Matematicas.calcularE())

print("\nIngrese el año que desea saber si es bisiesto", terminator: "")
var año : Int? = Int(readLine()!)
//let año = 2024
if Matematicas.esBisiesto(año!) {
    print("\(año!) es un año bisiesto.")
} else {
    print("\(año!) no es un año bisiesto.")
}






/*
//IMPLEMENTAR LA APP. PARA USAR NUMEROS ALEATORIOS
//SOLICITAR EL NUMERO AL USUARIO
//COMO CAPTURAR LA ENTRADA DESDE EL TECLADO
func obtenerNumeroAleatorio() -> Int {
    return Int.random(in: 1...100)
}

func mostrarMenu() {
    print("1. Verificar si un número es primo")
    print("2. Calcular factorial de un número (recursivo)")
    print("3. Calcular factorial de un número (iterativo)")
    print("4. Salir")
    print("Seleccione una opción: ", terminator: "")
}

// Ciclo para mostrar el menú y procesar las opciones del usuario
var opcion: Int = 0
while opcion != 4 {
    mostrarMenu()
    
    if let entrada = readLine(), let opcionSeleccionada = Int(entrada) {
        switch opcionSeleccionada {
        case 1:
            let numeroAleatorio = obtenerNumeroAleatorio()
            if Matematicas.esPrimo(n: numeroAleatorio) {
                print("\(numeroAleatorio) es primo.")
            } else {
                print("\(numeroAleatorio) no es primo.")
            }
        case 2:
            let numeroAleatorio = obtenerNumeroAleatorio()
            let factorialRecursivo = Matematicas.factorialRecursivo(n: numeroAleatorio)
            print("Factorial recursivo de \(numeroAleatorio) es \(factorialRecursivo)")
        case 3:
            let numeroAleatorio = Double(obtenerNumeroAleatorio())
            let factorialIterativo = Matematicas.factorialIterativo(n: numeroAleatorio)
            print("Factorial iterativo de \(numeroAleatorio) es \(factorialIterativo)")
        case 4:
            print("Saliendo del programa...")
        default:
            print("Opción no válida. Por favor, seleccione una opción del menú.")
        }
    } else {
        print("Entrada inválida. Por favor, introduzca un número.")
    }
    
    print("") // Salto de línea para mejorar legibilidad
}
*/

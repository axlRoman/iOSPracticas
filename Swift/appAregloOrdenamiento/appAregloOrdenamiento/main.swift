//
//  main.swift
//  appAregloOrdenamiento
//
//  Created by Axel Roman on 03/05/24.
//

import Foundation
//PASE POR REFERENCIA
func burbuja(vec: inout Array<Int>){
    var aux = 0
    for _ in 0..<vec.count-1
    {
        for j in 0..<vec.count-1{

            if vec[j] > vec[j+1]{
                aux = vec[j]
                vec[j] = vec[j+1]
                vec[j+1] = aux
            }
        }
    }
}

func burbuja(arrayN:Array<Int>)->Array<Int>{
    var array = arrayN
    let n = array.count
    for i in 0..<n {
        for j in 0..<(n - i - 1) {
            if array[j] > array[j + 1] {
                // Intercambiar Elementos
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    return array
}

func burbuja6may(arrayN: Array<Int>) ->Array<Int>{
    var arrayAux : [Int] = []
    if arrayN.isEmpty{
        return arrayAux
    }
    arrayAux = arrayN
    for _ in 0..<arrayN.count-1
    {
        for j in 0..<arrayN.count-1{
            var aux = 0
            if arrayAux[j] > arrayAux[j+1]{
                aux = arrayAux[j]
                arrayAux[j] = arrayAux[j+1]
                arrayAux[j+1] = aux
            }
        }
    }
    return arrayAux
}

var aleatorios:Int
var arrNumeros:[Int] = []

for _ in 1...10
{
    arrNumeros.append(Int.random(in: 10...100))
}




print("Array antes de ordenar: \(arrNumeros)")

arrNumeros = burbuja(arrayN: arrNumeros)



print("Array después de ordenar: \(arrNumeros)")


for i in 0..<10
{
    arrNumeros[i] = Int.random(in: 10...100)
}

var arrayOrd = burbuja(arrayN: arrNumeros)

print("Array antes de ordenar2: \(arrNumeros)")

//arrNumeros = burbuja(arrayN: arrNumeros)

print("Array después de ordenar: \(arrayOrd)")

arrayOrd.removeAll()
print(arrayOrd)
print(arrayOrd.capacity)

print("Datos ordenados por Burbuja con referencia")
burbuja(vec: &arrNumeros)

print(arrNumeros)
print("Arreglo numeros ordenado")


let ordInverso = Array(arrNumeros.sorted().reversed())
print("Orden inverso")
print(ordInverso)

let ordInverso2 = arrNumeros.sorted { $0 < $1 }
print("Orden inverso 2")
print(ordInverso2)



print(arrNumeros.reverse())
        
//opcion para asignar con idexador

//arrNumeros[]

//ORDENAR LOS DATOS CON LA BURBUJA



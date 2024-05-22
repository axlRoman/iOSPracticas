//
//  main.swift
//  appAlgebraDeConjuntos
//
//  Created by Axel Roman on 16/05/24.
//

// LEER : ALGEBRA DE CONJUNTOS
//  https://es.wikipedia.org/wiki/Álgebra_de_conjuntos
//

import Foundation
////     CONSTRUCTOR TIPO 1
//let conjuntoVacio1:Set<Int> = []
//print(conjuntoVacio1)
//
//let conjuntoVacio2:Set<Int> = Set()
//print(conjuntoVacio2)
//var conjuntoA: Set = [1,5,3,9]
//print(conjuntoA)
//for val in conjuntoA
//{
//    print(val, terminator: " | ")
//}
//print()
//print("Valor a ELIMINAR :")
//var num = Int(readLine()!)
//if let valor = conjuntoA.remove(num!)
//{
//    print("Valor Eliminado : \(valor)")
//    print(conjuntoA)
//}
//else
//{
//    print("ELEMENTO NO ENCONTRADO ")
//}
//conjuntoA.insert(9)
//print(conjuntoA)
//
//var conjuntoB:Set<Int> = []
//for _ in 1...5
//{
//    conjuntoB.insert(Int(arc4random_uniform(100)))
//}
//print("Conjunto B ")
//print(conjuntoB)
////UNION
//var unionAB = conjuntoA.union(conjuntoB)
//print(" A: \(conjuntoA)  U  B:\(conjuntoB) = \(unionAB)")
//
////UNIR DATOS ORDENADOS
//let unionAB_ = conjuntoA.union(conjuntoB).sorted()
//print(" A: \(conjuntoA)  U  B:\(conjuntoB) = \(unionAB_)")
//
//// APLICAR:  INTERSECCION, DIFERENCIA, DIFERENCIA SIMETRICA
//// INTERSECCION
//let interseccionAB = conjuntoA.intersection(conjuntoB)
//print("Intersección de A y B: \(interseccionAB)")
//
//// DIFERENCIA
//let diferenciaAB = conjuntoA.subtracting(conjuntoB)
//print("Diferencia de A y B: \(diferenciaAB)")
//
//// DIFERENCIA SIMETRICA
//let diferenciaSimetricaAB = conjuntoA.symmetricDifference(conjuntoB)
//print("Diferencia Simétrica de A y B: \(diferenciaSimetricaAB)")
//
//
//// DETERMINAR SI ES DISJUNTO, SUBCONJUNTO, SUPERCONJUNTO
//// DISYUNTOS
//let disyunto = conjuntoA.isDisjoint(with: conjuntoB)
//print("¿A y B son disyuntos?: \(disyunto)")
//
//// SUBCONJUNTO
//let subconjunto = conjuntoA.isSubset(of: conjuntoB)
//print("¿A es un subconjunto de B?: \(subconjunto)")
//
//// SUPERCONJUNTO
//let supercojunto = conjuntoA.isSuperset(of: conjuntoB)
//print("¿A es un superconjunto de B?: \(supercojunto)")


let frutas:Set = ["🍑","🍓","🍏","🍌","🍊","🍒","🥭"]//,"🥥"]
let frutasyVerduras: Set = ["🍑","🍓","🍏","🍌","🍊","🍒","🥭","🍅","🌶","🌽","🥔","🥦"]

print("Frutas:", frutas)
print("Frrutas y Verduras: \(frutasyVerduras)")


if frutas.isSuperset(of: frutasyVerduras){
    print("Frutas si es superconjunto de frutas y verduras")
}
else{
    print("Frutas no es superconjunto de frutas y verduras")
}

if frutasyVerduras.isSuperset(of: frutas){
    print("Frutas y verduras si es superconjunto de frutas")
}
else{
    print("Frutas y verduras no es superconjunto de frutas")
}


//Aplicar los otros metodos


let animales: Set = ["🦆","🦀","🦈","🐍","🐒","🐷","🐶","🐳"]
print(animales)
print("Frutas en Disjunto de Animales", frutas.isDisjoint(with: animales))



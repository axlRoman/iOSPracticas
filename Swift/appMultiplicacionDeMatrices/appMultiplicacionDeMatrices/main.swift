//
//  main.swift
//  appMultiplicacionDeMatrices
//
//  Created by Axel Roman on 10/05/24.
//

import Foundation

func main()->(){
    print("Multiplicacion de Matrices")
    print()
    
//    let matrizA =
//    [
//        [1,2,3],
//        [4,5,6]
////    [7,8,9]
//    ]
//
    
    let matrizA =
    [
        [1,2,3],
        [4,5,6],
        [7,8,9],
        [1,2,3],
        [7,8,9],
        [7,8,9],
        [7,8,9]
    ]
    
//    let matrizB =
//    [
//        [7,8],
//        [9,10],
//        [11,12]
//    ]
  
    
    let matrizB =
    [
        [1,2,3,1],
        [4,5,6,2],
        [7,8,9,3]
    ]
    
    print("Matriz A: ")
    imprimirMatrix(matrizA)
    print( )
    print("Matriz B: ")
    imprimirMatrix(matrizB)
    
    let mAPormB = multiplicarMatrices(matrizA, matrizB)
    
    print("Matriz A ✖️ Matriz B")
    imprimirMatrix(mAPormB)
    
    func imprimirMatrix(_ matrix: [[Int]]){
        for arreglo in matrix{
            print(arreglo)
        }
    }
    
    func multiplicarMatrices(_ matrixA: [[Int]], _ matrixB:[[Int]]) -> [[Int]]{
        if matrixA[0].count != matrixB.count{
            print("ERROR, NUMERO DE COLUMNAS DE MATRIZ A DEBE SER IGUAL A NUMERO DE RENGLONES DE MATRIZ B")
            return [[]] //return Matrix empty
        }
        // Definir las dimensiones de la matriz resultante
        let rowsA = matrixA.count
        let colsA = matrixA[0].count
        let colsB = matrixB[0].count

        // Inicializar la matriz resultante con ceros
        var resultado = Array(repeating: Array(repeating: 0, count: colsB), count: rowsA)

        print()
        imprimirMatrix(resultado)
        
        // Calcular la multiplicación de matrices
        for i in 0..<rowsA {
            for j in 0..<colsB {
                for k in 0..<colsA {
                    resultado[i][j] += matrixA[i][k] * matrixB[k][j]
                }
            }
        }
        return resultado
    }
    
}


main()



//
//
//// Función para multiplicar dos matrices
//func multiplyMatrices(_ matrix1: [[Int]], _ matrix2: [[Int]]) -> [[Int]]? {
//    // Verificar si las matrices son válidas para la multiplicación
//    guard !matrix1.isEmpty, !matrix2.isEmpty,
//          matrix1[0].count == matrix2.count else {
//        return nil // Las matrices no son válidas para la multiplicación
//    }
//
//    // Crear una matriz para almacenar el resultado
//    var result = Array(repeating: Array(repeating: 0, count: matrix2[0].count), count: matrix1.count)
//
//    // Realizar la multiplicación
//    for i in 0..<matrix1.count {
//        for j in 0..<matrix2[0].count {
//            for k in 0..<matrix2.count {
//                result[i][j] += matrix1[i][k] * matrix2[k][j]
//            }
//        }
//    }
//
//    return result
//}
//
//// Función para imprimir una matriz
//func printMatrix(_ matrix: [[Int]]) {
//    for row in matrix {
//        print(row)
//    }
//}
//
//// Ejemplo de uso
//let matrix1 = [[1, 2, 3],
//               [4, 5, 6],
//               [7, 8, 9]]
//
//let matrix2 = [[9, 8, 7],
//               [6, 5, 4],
//               [3, 2, 1]]
//
//
//
//if let result = multiplyMatrices(matrix1, matrix2) {
//    print("Resultado de la multiplicación:")
//    printMatrix(result)
//} else {
//    print("Las matrices no son válidas para la multiplicación.")
//}
//
//

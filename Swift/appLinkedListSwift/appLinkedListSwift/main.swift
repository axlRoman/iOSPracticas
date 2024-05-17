//
//  main.swift
//  appLinkedListSwift
//
//  Created by Axel Roman on 08/05/24.
//
import Foundation

// Definición de la clase Node<T> que representa un nodo en una lista enlazada
class Node<T> {
    //implementar el nodo para manejar productos
    
  internal var data: T // El dato almacenado en el nodo
  internal var next: Node<T>? // Referencia al siguiente nodo en la lista
  
  // Inicializador que asigna un dato al nodo y establece la referencia al siguiente nodo como nula
  init(data: T) {
    self.data = data
    self.next = nil
  }
}

// Definición de la clase SinglyLinkedList<T> que representa una lista enlazada
class SinglyLinkedList<T> {
  internal var head: Node<T>? // Referencia al primer nodo en la lista
  internal var count: Int = 0 // Contador para mantener el tamaño de la lista
  
  // Inicializador por defecto que no realiza ninguna acción
  public init() {}
  
  // Inicializador que asigna el primer nodo de la lista
  init(first: Node<T>) {
    self.head = first
  }
  
  // Método que verifica si la lista está vacía
  public func isEmpty() -> Bool {
    return count == 0
  }
  
  // Método que imprime los elementos de la lista enlazada

   /**
     Imprime los elementos de la lista enlazada.

     Recorre la lista enlazada comenzando desde el nodo inicial (head) e imprime el dato de cada nodo en orden. Los elementos se imprimen separados por una flecha "->" y la impresión finaliza con "nil" para indicar el final de la lista.

     - Complexity: O(n), donde 'n' es el número de elementos en la lista.

     */
public func imprimir() {
    var current = head // Inicializa un puntero para recorrer la lista, comenzando desde el primer nodo
    while current != nil { // Itera hasta que el puntero llegue al final de la lista (cuando current es nulo)
        print(current!.data, terminator: " -> ") // Imprime el dato del nodo actual seguido de una flecha "->"
        current = current?.next // Avanza al siguiente nodo en la lista
    }
    print("nil") // Imprime "nil" para indicar que la lista ha terminado
}
    
    public func imprimirOswi() -> String {
        var text = ""
        var node = head;
        while node != nil{
            text += "\(node!.data)"
            node = node!.next
            if node != nil {
                text += " ➡️ "
            }
        }
        return text + " ➡️ nil"
    }
    
    // Método que imprime los elementos de la lista enlazada junto con índices numéricos
    public func imprimirConIndices() {
        var current = head
        var index = 0
        while current != nil {
            print("\(index): \(current!.data)", terminator: " -> ")
            current = current?.next
            index += 1
        }
        print("nil")
    }

  
  // Método que devuelve el tamaño de la lista
  public func size() -> Int {
    return count
  }
  
  // Método que añade un elemento al principio de la lista
  public func add(element: T) {
    let node = Node<T>(data: element)
    node.next = head
    head = node
    count += 1
  }

  // Método que elimina y devuelve un elemento del principio de la lista
  public func remove() -> T? {
    if isEmpty() { // Verificar si la lista está vacía
      return nil
    }
    let item = self.head?.data // Obtener el dato del primer nodo
    self.head = self.head?.next // Mover la referencia de la cabeza al siguiente nodo
    count -= 1 // Decrementar el contador de elementos
    return item
  }
  
  // Método que devuelve el elemento en la cabeza de la lista sin eliminarlo
  public func peek() -> T? {
    if isEmpty() { // Verificar si la lista está vacía
      return nil
    }
    return head?.data // Devolver el dato del primer nodo
  }
    
    // Método que elimina la primera ocurrencia de un elemento específico en la lista
    public func removeElement(element: T) -> Bool where T: Equatable {
        var current = head
        var prev: Node<T>? = nil
        
        // Iterar sobre la lista para encontrar el elemento a eliminar
        while current != nil {
            if current?.data == element {
                // Si el elemento a eliminar está en la cabeza de la lista
                if prev == nil {
                    head = current?.next
                } else {
                    prev?.next = current?.next
                }
                count -= 1
                return true // Elemento eliminado exitosamente
            }
            prev = current
            current = current?.next
        }
        
        // Si el elemento no se encontró en la lista
        return false
    }


    
    
}

// Crear una instancia de SinglyLinkedList para almacenar enteros
var singlyLinkedListName = SinglyLinkedList<String>()
var singlyLinkedList = SinglyLinkedList<Int>()

// Añadir elementos a la lista
singlyLinkedList.add(element: 22)
singlyLinkedList.add(element: 31)
singlyLinkedList.add(element: 11)
singlyLinkedList.add(element: 57)
singlyLinkedList.add(element: 64)
singlyLinkedListName.add(element: "Axel")
singlyLinkedListName.add(element: "Sofia")
singlyLinkedListName.add(element: "Brayan")
singlyLinkedListName.add(element: "Ivan")
singlyLinkedListName.add(element: "Julian")

print("LISTA ENLAZADA")

// Imprimir el tamaño y el elemento en la cabeza de la lista
print("Size is \(singlyLinkedList.size())")
print("Head is \(singlyLinkedList.peek()!)")

// Eliminar el primer elemento de la lista
var eliminar = singlyLinkedList.remove()
print("Valor eliminado : ",eliminar!)

// Imprimir el nuevo elemento en la cabeza de la lista
print("New Head is \(singlyLinkedList.peek()!)")

//  EVALUACION:
//DOCUMENTE LAs CLASE INDICANDO SU FUNCIONAMIENTO
//IMPLEMENTAR EL METODO IMPRIMIR

// Imprimir la lista completa
singlyLinkedListName.imprimir()
print(singlyLinkedList.imprimirOswi())

// Crear una instancia de SinglyLinkedList para almacenar nombres (cadenas de texto)
var singlyLinkedListNames = SinglyLinkedList<String>()

print("Ingrese los nombres (escriba 'fin' para terminar):")

while let input = readLine(), input != "fin" {
    singlyLinkedListNames.add(element: input)
}

print("\nLista de Nombres:")
singlyLinkedListNames.imprimir()

print("Ingrese el nombre que quiere eliminar")
let elementoEliminado = readLine();

let eliminado = singlyLinkedListNames.removeElement(element: elementoEliminado!)

// Imprimir si el elemento fue eliminado o no
if eliminado {
    print("El elemento \(elementoEliminado!) fue eliminado correctamente.")
} else {
    print("El elemento \(elementoEliminado!) no fue encontrado en la lista.")
}

// Imprimir la lista después de eliminar el elemento
print("Lista después de eliminar el elemento:")
singlyLinkedListNames.imprimir()



//PARA MAÑANA ANALIZAR LA MULTIPLICACION DE MATRICES CODIGO




//
//  ContentView.swift
//  appPickerSwiftUI
//
//  Created by Axel Roman on 07/06/24.
//

import SwiftUI

enum sabor: String, CaseIterable, Identifiable {
    case chocolate
    case vainilla
    case fresa
    
    var id: String{self.rawValue}
}

struct VentaDeHelados : View{
    @State private var saborSeleccionado = sabor.chocolate
    var body: some View {
        Picker("Sabor", selection: $saborSeleccionado){
            Text("Chocolate 🍫").tag(sabor.chocolate)
            Text("Vainilla 🍦").tag(sabor.vainilla)
            Text("Fresa 🍓").tag(sabor.fresa)
        }
        HStack{
            Text("Sabor Seleccionado: \(saborSeleccionado.rawValue)")
            Image(systemName: "cloud.sun.rain.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }

    }
}
                
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        VentaDeHelados()
    }
}

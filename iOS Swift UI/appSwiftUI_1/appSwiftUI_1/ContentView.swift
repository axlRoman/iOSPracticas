//
//  ContentView.swift
//  appSwiftUI_1
//
//  Created by Axel Roman on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "car.2.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Image(systemName: "cloud.sun.rain.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

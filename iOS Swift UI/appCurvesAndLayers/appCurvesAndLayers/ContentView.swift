//
//  ContentView.swift
//  appCurvesAndLayers
//
//  Created by Axel Roman on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rageLevel: RageLevel = .happy

    var body: some View {
        VStack {
            SkyView(rageLevel: rageLevel)
                .frame(height: 300)
                .border(Color.black)
            Picker("Rage Level", selection: $rageLevel) {
                Text("Happy").tag(RageLevel.happy)
                Text("Somewhat Happy").tag(RageLevel.somewhatHappy)
                Text("Neutral").tag(RageLevel.neutral)
                Text("Somewhat Angry").tag(RageLevel.somewhatAngry)
                Text("Angry").tag(RageLevel.angry)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

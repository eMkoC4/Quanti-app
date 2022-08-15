//
//  FlightSimulatorView.swift
//  Quanti
//
//  Created by IvanQ on 20.06.2022.
//

import SwiftUI

struct FlightSimulatorView: View {
    var body: some View {
        VStack {
            
            Image("Rocket Idle")
            Text("Move your phone up")
            Text("to launch the rocket")
        }
        .navigationBarTitle("Launch")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FlightSimulatorView_Previews: PreviewProvider {
    static var previews: some View {
        FlightSimulatorView()
    }
}

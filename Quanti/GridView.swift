//
//  GridView.swift
//  Quanti
//
//  Created by IvanQ on 19.06.2022.
//

import SwiftUI

struct GridView: View {
    var rocket: Rocket
    let columns = [
        GridItem(.fixed(120), spacing: 10),
        GridItem(.fixed(120), spacing: 10),
        GridItem(.fixed(120), spacing: 10)]
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Parameters")
                .font(.headline)
            LazyVGrid(columns: columns, spacing: 10) {
                VStack(spacing: 4) {
                    Text(String(rocket.height.meters!) + "m")
                        .font(.system(size: 24))
                        .bold()
                    Text("height")
                        .font(.headline)
                }
                .padding(16)
                
                .background(Color.pink)
                .clipShape(RoundedRectangle(cornerRadius: 16))


                VStack(spacing: 4) {
                    Text(String(rocket.diameter.meters!) + "m")
                        .font(.system(size: 24))
                        .bold()
                    Text("diameter")
                        .font(.headline)
                }
                .padding(16)
                .background(Color.pink)
                .clipShape(RoundedRectangle(cornerRadius: 16))

                VStack(spacing: 4) {
                    Text(String(rocket.mass.kg) + "t")
                        .font(.system(size: 24))
                        .bold()
                    Text("mass")
                        .font(.headline)
                }
                .padding(16)
                .background(Color.pink)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .foregroundColor(Color.white)
        }
    }
}

//
//  AnimatedFlightView.swift
//  Quanti
//
//  Created by IvanQ on 22.06.2022.
//

import SwiftUI

struct AnimatedFlightView: View {
    @Namespace private var animation
    let timer = Timer.publish(every: 0.5, on: .current, in: .common).autoconnect()
    @State private var isFlipped = false
    //@State private var result = Accelerometer()
    var body: some View {
        VStack {
            
            if isFlipped {
                Image("Rocket Flying")
                    .matchedGeometryEffect(id: "image", in: animation)
                Spacer()
                Text("Launch successful!")
                    .matchedGeometryEffect(id: "text", in: animation)
                    .font(.subheadline)
                Spacer()
            } else {
                Group {
                    Image("Rocket Idle")
                        .matchedGeometryEffect(id: "image", in: animation)
                    Text("Move your phone up")
                        .font(.subheadline)
                    Text("to launch the rocket")
                        .font(.subheadline)
                }
//                .onReceive(timer) { time in
//                    if result {
//                        withAnimation(.linear(duration: 0.8)) {
//                            isFlipped.toggle()
//                        }
//                        timer.upstream.connect().cancel()
//                    } else {
//                        print(result)
//                    }
//                }

            }
        }
        .navigationBarTitle("Launch")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem {
                Button(action: {
                    //result = true
                }) {
                    Text("Manual launch")
                        .bold()
                }
            }
        }
//        .onTapGesture {
//            withAnimation(.linear(duration: 0.7)) {
//                isFlipped.toggle()
//            }
//        }
    }
}


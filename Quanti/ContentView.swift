//
//  ContentView.swift
//  Quanti
//
//  Created by IvanQ on 19.06.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var store = RocketsStore()
    @State private var isShowingDetailView = false
    
    var body: some View {
        ZStack {
            switch store.state {
            case .finished:
                content
            case .initial, .loading:
                ProgressView()
            case .failed:
                Text("🥲🥲🥲 Something went wrong")
            }
        }
        .onAppear(perform: load)
    }
    
    var content: some View {
        NavigationView {
            List {
                ForEach (store.rockets) { rocket in
                    NavigationLink(destination:
                    RocketDetailView(store: RocketDetailStore(rocket: rocket))
                    ) {
                        RocketListView(rocket: rocket)
                    }
                }
            }
            .navigationTitle("Rockets")
        }
    }
}

extension ContentView {
    func load() {
        Task {
            await store.load()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  jokesappui
//
//  Created by Olgun ‏‏‎‏‏‎ on 26.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = jokesviewmodel()
    var body: some View {
        VStack {
            NavigationView {
                List(jokesVM.jokes) { element in
                    Text(element.joke)
                }.navigationBarTitle(Text("Jokes App"))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

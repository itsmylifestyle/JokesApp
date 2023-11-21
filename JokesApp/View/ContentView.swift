//
//  ContentView.swift
//  JokesApp
//
//  Created by Айбек on 19.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { el in
                Text(el.joke)
            }
//            .toolbar {
//                Button(action: {
//                    addJokeFunc()
//                }) {
//                    Text("New Joke")
//                }
//            }
            .navigationTitle(Text("Jokes App"))
        }
    }
    
//    func addJokeFunc() {
//        jokesVM.getJokes(count: 1)
//    }
    
    //working with backend
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

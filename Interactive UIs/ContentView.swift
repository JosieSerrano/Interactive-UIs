//
//  ContentView.swift
//  Interactive UIs
//
//  Created by Scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    @State private var textTitle = "What is your Name?"
    
    var body: some View {
        VStack {
            
            Text(textTitle)
                .font(.largeTitle)
        
            TextField("Type your name here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)

            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
                print(textTitle)
  }
            .font(.largeTitle)
      .buttonStyle(.borderedProminent)
      .tint(.pink)
                    
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

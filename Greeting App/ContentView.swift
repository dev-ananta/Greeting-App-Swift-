//
//  ContentView.swift
//  Greeting App
//
//  Created by Anant Parikh on 9/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Greeting App") //Title
                .font(.largeTitle)
                .bold()
            
            TextField("Enter Name", text: $name) //Input
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack { // Buttons
                Button("Say Hello") {
                    greeting = "Hello, \(name)!"
                }
                .buttonStyle(.bordered)
                
                Button("Goodbye") {
                    greeting = "Goodbye, \(name)!"
                }
                .buttonStyle(.bordered)
                
                Button("Aloha") {
                    greeting = "Aloha, \(name)!"
                }
                .buttonStyle(.bordered)
            }
            
            Text(greeting) //Output
                .font(.title2)
                .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  ColorPicker
//
//  Created by Andrew Maldonado on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.blue
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
            
            Spacer()
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundStyle(color)
                .padding()
            ColorPicker("Pick a Color", selection: $color)
            
            Spacer()
            
            Button("Clear Color") {
                color = Color.blue
                
           }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

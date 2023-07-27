//
//  ContentView.swift
//  All About Me
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        ScrollView{
            
            ZStack{
                Color(red: 0.95, green: 0.3, blue: 0.55).ignoresSafeArea()
                
                VStack{
                    
                    Text("All About Anya")
                        .foregroundColor(Color(red:1.0, green: 0.41, blue: 0.7))
                        .bold()
                        .font(.largeTitle)
                    
                    Image("biking")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Image("travel 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Image("hiking")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Image("dance")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Button("Click to learn more"){
                        showAlert = true
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:1.0, green: 0.41, blue: 0.7))
                    .alert(" She is also a martial artist and likes to cook :) ",isPresented: $showAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    
                    
                }
            }
        }.padding()
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

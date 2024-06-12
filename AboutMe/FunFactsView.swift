//
//  FunFactsView.swift
//  AboutMe
//
//  Created by luis armendariz on 6/11/24.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement()!
            }
            .padding()
            .background(Color.cyan)
            .cornerRadius(15)
            .foregroundColor(.black)
        }
        .padding()
    }
}


#Preview {
    FunFactsView()
}

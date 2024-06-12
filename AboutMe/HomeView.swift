//
//  HomeView.swift
//  AboutMe
//
//  Created by luis armendariz on 6/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("All About")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
        
        Image(information.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding(40)
        
        Text(information.name)
            .font(.title)
    }
}

#Preview {
    HomeView()
}

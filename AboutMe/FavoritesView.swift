//
//  FavoritesView.swift
//  AboutMe
//
//  Created by luis armendariz on 6/11/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            Text("Hobbies")
                .font(.title2)
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                    
                }
                .padding()
            }
            .padding()
            
            
            Text("Foods")
                .font(.title2)
            
            HStack(spacing: 60) {
                ForEach(information.foods, id: \.self) { food in
                    Text(food)
                        .font(.system(size: 48))
                }
            }
            .padding()
            
            
            Text("Favorite Colors")
                .font(.title2)
            
            
            HStack(spacing: 30) {
                ForEach(information.colors, id: \.self) { color in
                    color
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    FavoritesView()
}

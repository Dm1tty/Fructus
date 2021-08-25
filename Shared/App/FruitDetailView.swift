//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Dzmitry Matsiulka on 8/24/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20, content: {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        
                        // Subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        
                        
                    })//VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640, alignment: .center)
                    
                })//VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            })//SCROLL
            .edgesIgnoringSafeArea(.top)
        }//NAVIGATION
        
    }
}

// MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

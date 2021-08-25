//
//  ContentView.swift
//  Shared
//
//  Created by Dzmitry Matsiulka on 8/17/21.
//

import SwiftUI

struct ContentView: View {
    
    
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - Body

    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    
                }
            }
            
        }// Navigation
   
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

//
//  OnboardingView.swift
//  Fructus
//
//  Created by Dzmitry Matsiulka on 8/23/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
   
    var body: some View {
       
        //MARK: Body
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:Loop
           
        } //:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}

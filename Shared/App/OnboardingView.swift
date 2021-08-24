//
//  OnboardingView.swift
//  Fructus
//
//  Created by Dzmitry Matsiulka on 8/23/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        //MARK: Properties
        
        
        //MARK: Body
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            }//:Loop
           
        } //:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

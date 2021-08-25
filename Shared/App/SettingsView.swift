//
//  SettingsView.swift
//  Fructus
//
//  Created by Dzmitry Matsiulka on 8/25/21.
//

import SwiftUI

// MARK: - Properties
struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView{
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 20) {
               
                //MARK: - Section 1
                GroupBox(
                    label:
                        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                ){
                         Divider().padding(.vertical, 4)
                    HStack(alignment: .center, spacing: 10)
                     {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                            .font(.footnote)
                    }
                }
                //MARK: - Section 2
                
                //MARK: - Section 3
               
            }//VSTACK
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "xmark")
                                    })
            )
            .padding()
        }//SCROLL
    }//NAVIGATION
}
}
// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

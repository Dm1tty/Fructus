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
    @AppStorage("isOnboarding") var isOnboarding = false
    
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
                GroupBox(label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")){
                    Divider().padding(.vertical, 4)
                    Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts with the onboarding screen every time.")
                        .padding(.vertical, 4)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding, label: {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    })
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                }
                
                
                //MARK: - Section 3
                GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")){
                    
                    SettingsRowView(name: "Developer", content: "Dzmitry")
                    SettingsRowView(name: "Designer", content: "Robert")
                    SettingsRowView(name: "Compatability", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "SwiftUIMasterClass", linkDestination: "swiftuimasterclass.com")
                    SettingsRowView(name: "Twitter", linkLabel: "@robert", linkDestination: "twitter.com/robertpetras")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.1.0")
                    
                }//BOX
                
               
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

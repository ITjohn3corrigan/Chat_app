//
//  RootView.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/25/23.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .contacts
    @State var isOnboarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        VStack {
            
            Text("Hello, world!")
                .padding()
                .font(Font.chatHeading)
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
            
        } .fullScreenCover(isPresented: $isOnboarding) {
            //On dismiss
        } content:{
            //The onboarding sequence
            OnboardingContainerView(isOnboarding: $isOnboarding)        }
      
    }
    //init(){
    //    for family in UIFont.familyNames{
    //        print(family)
    //        for fontname in //UIFont.fontNames(forFamilyName: //family){
         //       //print("--\(fontname)")
            //}
            
        //}
        
    //}

    
    
    
}
struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

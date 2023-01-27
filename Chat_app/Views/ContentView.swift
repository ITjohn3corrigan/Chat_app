//
//  ContentView.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/25/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .font(Font.caption)
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

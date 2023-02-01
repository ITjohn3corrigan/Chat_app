//
//  OnboardingButtonStyle.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import Foundation
import SwiftUI

struct OnboardingButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            Rectangle()
                .frame(height: 50)
                .cornerRadius(4)
                .foregroundColor(Color ("Button-Primary"))
            configuration.label
                .font(Font.button)
                .foregroundColor(Color("Text-Button"))
            
            
                
            
        }
    }
    
}

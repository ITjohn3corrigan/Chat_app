//
//  CreateProfileTextfieldStyle.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/31/23.
//

import Foundation
import SwiftUI

struct CreateProfileTextfieldStyle:  TextFieldStyle {
    func _body (configuration: TextField<Self._Label> ) -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("Input"))
                .cornerRadius(8)
                .frame(height: 46)
            //This references the text field
            configuration
                .font(Font.tabBar)
                .padding()
            
            
        }
    }
    
}

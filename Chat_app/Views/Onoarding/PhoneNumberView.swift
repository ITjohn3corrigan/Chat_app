//
//  PhoneNumberView.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import SwiftUI

struct PhoneNumberView: View {
    @Binding var currentStep: OnboardingStep
    @State var phoneNumber = ""
    var body: some View {
        VStack{
            
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)
            Text("Enter your mobile number below. We'll send you a verification code after.")
                .font(Font.bodyParagraph)
                .padding(.top, 12)
            
            
            //Text field
            
            ZStack{
            
             Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("Input"))
                HStack
                {
                    TextField("e.g. +1 912 867 5309", text:  $phoneNumber)
                    Spacer()
                    Button {
                        //clear text field
                        phoneNumber = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                    }

                  
                        .frame(width: 19, height: 19)
                        .tint(Color("Icons-Input"))
                    
                }
                .padding()
            }
            .padding(.top, 34)
            
            
            Spacer()
            
            Button {
                //Next step
                currentStep = .verification
                
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)

            
        }
        .padding(.horizontal)
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView(currentStep: .constant(.phonenumber))
    }
}

//
//  VerificationView.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import SwiftUI

struct VerificationView: View {
    @Binding var currentStep: OnboardingStep
    @State var verificationcode = ""
    
    var body: some View {
        VStack{
            
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)
            Text("Enter the 6-digit verification code we sent to your device")
                .font(Font.bodyParagraph)
                .padding(.top, 12)
            
            
            //Text field
            
            ZStack{
            
             Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("Input"))
                HStack
                {
                    TextField("", text:  $verificationcode)
                    Spacer()
                    Button {
                        //clear text field
                        verificationcode = ""
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
                currentStep = .profile
                
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)

            
        }
        .padding(.horizontal)
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView(currentStep: .constant(.verification))
    }
}

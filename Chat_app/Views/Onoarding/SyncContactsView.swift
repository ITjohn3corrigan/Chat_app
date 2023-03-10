//
//  SyncContactsView.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import SwiftUI

struct SyncContactsView: View {
    @Binding var isOnboarding: Bool
    @EnvironmentObject var ContactsViewModel: ContactsViewModel
    
    
    var body: some View {
        VStack{
            Spacer()
            Image("onboarding-all-set")
            
            Text("Awesome!")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Continue to start chatting with your friends")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            Spacer()
            Button {
                //Next step
             isOnboarding = false
            } label: {
                
                Text("Continue")
                
            }
            .buttonStyle(OnboardingButtonStyle())

                .padding(.bottom, 87)
            
            
            
        }
        .padding(.horizontal)
        .onAppear{
            //Get local contacts
            ContactsViewModel.getLocalContacts()
        }
    }
}

struct SyncContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SyncContactsView(isOnboarding: .constant(true))
    }
}

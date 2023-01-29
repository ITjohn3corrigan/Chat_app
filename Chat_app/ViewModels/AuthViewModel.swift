//
//  AuthViewModel.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import Foundation
import FirebaseAuth

class AuthViewModel{
    static func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
        
    }
    
    static func getLoggedINUserID() -> String {
        
        return Auth.auth().currentUser?.uid ?? ""
        
    }
    
    static func logout() {
        try? Auth.auth().signOut()
    }
    
    
}

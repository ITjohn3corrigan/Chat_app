//
//  User.swift
//  Chat_app
//
//  Created by Corrigan, John on 2/2/23.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable{
   @DocumentID  var id: String?
    var firstname: String?
    var lastname: String?
    var phone: String?
    var photo: String?
    
    
}

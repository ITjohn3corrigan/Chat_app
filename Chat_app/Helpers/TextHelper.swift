//
//  TextHelper.swift
//  Chat_app
//
//  Created by Corrigan, John on 2/3/23.
//

import Foundation
class TextHelper {
    
    static func sanitizePhoneNumber(_ phone: String) -> String {
        return phone
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: " ", with: "")
    }
}

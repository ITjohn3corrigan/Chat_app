//
//  DatabaseService.swift
//  Chat_app
//
//  Created by Corrigan, John on 2/3/23.
//

import Foundation
import Contacts
import Firebase

class DatabaseService {
    
    func getPlatformUsers( localContacts:[CNContact], completion: @escaping ([User]) -> Void){
       var platformUsers = [User]()
        
        //Construct an array of phone numbers
       var lookupphoneNumbers = localContacts.map { contact in
            //turn the contact into a phone number
           return TextHelper.sanitizePhoneNumber( contact.phoneNumbers.first?.value.stringValue ?? "")
        }
        //make sure that there are lookup phone numbers
        guard lookupphoneNumbers.count > 0 else {
            completion(platformUsers)
            return
        }
        
        //query the database for these phone numbers
        let db = Firestore.firestore()
        
        // get the firts < ten phone numbers from the phone
        let tenPhoneNumbers = Array(lookupphoneNumbers.prefix(10))
        lookupphoneNumbers = Array(lookupphoneNumbers.dropFirst(10))
        
        
        //remove the ten that we are looking up
        
        //perform the query
        
        while !lookupphoneNumbers.isEmpty {
            let tenPhoneNumbers = Array(lookupphoneNumbers.prefix(10))
            lookupphoneNumbers = Array(lookupphoneNumbers.dropFirst(10))

            
            let query =  db.collection("users").whereField("phonenumber", in: tenPhoneNumbers)

            //retreive the users that are on the platform
            
            query.getDocuments {snapshot, error in
                
                //check for errors
                if error == nil && snapshot != nil  {
                    // for each document that was fetched create a user
                    for doc in snapshot!.documents {
                    //for doc in snapshot!.documents {
                        
                        if let user =  try? doc.data(as: User.self)
                            {
                            
                            //append to the platform users array
                            platformUsers.append(user)
                            
                        }
                    }
                    //check if we have anymore phonenumbers to look
                    //if not we can call the completion block
                    if lookupphoneNumbers.isEmpty {
                        //return these users
                        completion(platformUsers)

                        
                    }
                    
                }
                
            }
        }
                
    }
}

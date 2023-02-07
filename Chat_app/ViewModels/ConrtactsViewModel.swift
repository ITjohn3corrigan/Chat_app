//
//  ConrtactsViewModel.swift
//  Chat_app
//
//  Created by Corrigan, John on 2/1/23.
//

import Foundation
import Contacts

class ContactsViewModel: ObservableObject{
    @Published var users = [User]()
    private var localContacts = [CNContact]()
    func getLocalContacts() {
       
        DispatchQueue.init(label: "getcontacts").async {
            do {
                let store = CNContactStore()
                
                //list of keys we want to get
                let keys = [CNContactPhoneNumbersKey,
                            CNContactGivenNameKey,
                            CNContactFamilyNameKey] as! [CNKeyDescriptor]
                
                //create a fetch request
                let fetchRequest = CNContactFetchRequest(keysToFetch: keys)
                
                try store.enumerateContacts(with: fetchRequest,  usingBlock: { contact, success in
                    //do something with the contact
                    self.localContacts.append(contact)
                })
                
                DatabaseService().getPlatformUsers(localContacts: self.localContacts) { platformUsers in
                    //set the fetched users to the published users property
                   
                    DispatchQueue.main.async{
                        
                    }
                    self.users = platformUsers
                    
                }
                
            }
            catch {
        }
        

            
        }
    }
}

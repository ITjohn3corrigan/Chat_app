//
//  CustomTabBar.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/28/23.
//

import SwiftUI
enum Tabs: Int{
        case chats = 0
        case contacts = 1
        
}
struct CustomTabBar: View {
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack{
            
            
            Button {
                //Switch to chat'
                selectedTab = .chats
            } label: {
                TabBarButton(buttonText: "Chats", imageName: "bubble.left", isActive: selectedTab == .chats)
//
//                GeometryReader{ geo in
//                    if selectedTab == .chats {
//                        Rectangle()
//                            .foregroundColor(.blue)
//                            .frame(width:geo.size.width/2 ,height:4)
//                            .padding(.leading, geo.size.width/4)
//                    }
//                    VStack(alignment: .center, spacing: 4){
//
//                        Image(systemName: "bubble.left")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 24, height: 25)
//
//                        Text("Chat's")
//                            .font(Font.tabBar)
//                    }
//                    .frame(width:geo.size.width, height: geo.size.height)
//
//                }
                
            }
                .tint(Color("Icons-Secondary"))
                .frame(height:82)
                
                Button {
                    // New Chat
                } label: {
                    
                    VStack(alignment: .center, spacing: 4){
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                        Text("New Chat")
                            .font(Font.tabBar)
                    }
                    
                }
                .tint(Color("Icons-Primary"))
                
                
                Button {
                    //Switch to contacts
                    selectedTab = .contacts
                } label: {
                    TabBarButton(buttonText: "contacts", imageName: "person", isActive: selectedTab == .contacts)
                    
//                    GeometryReader{ geo in
//                        if selectedTab == .contacts {
//                            Rectangle()
//                                .foregroundColor(.blue)
//                                .frame(width:geo.size.width/2 ,height:4)
//                                .padding(.leading, geo.size.width/4)
//                        }
//                        VStack(alignment: .center, spacing: 4){
//                            Image(systemName: "person")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 24, height: 25)
//
//                            Text("Contacts")
//                                .font(Font.tabBar)
//                        }
//                        .frame(width:geo.size.width, height:geo.size.height)
//
//                    }
                    
                }
                
                
                
            
            .tint(Color("Icons-Secondary"))
            .frame(height: 82)
        }
    }
    
    struct CustomTabBar_Previews: PreviewProvider {
        static var previews: some View {
            CustomTabBar(selectedTab: .constant(.contacts))
        }
    }
}

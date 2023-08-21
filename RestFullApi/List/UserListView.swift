//
//  UserListView.swift
//  RestFullApi
//
//  Created by ceksi on 22.08.2023.
//

import SwiftUI

struct UserListView: View {
    
    @State var users: [User] = []
    
    var body: some View {
        
      
        
       
            
            NavigationView{
                List(users) { user in
                    NavigationLink(destination: UserView(user: user )) {
                        Text(user.name)
                    }
                }
                .navigationBarTitle("Users")
            }
            .onAppear {
                APIManager().fetchUsers { fetchUsers in
                    self.users = fetchUsers
                    
                
            }
        }
    }
    
    
}


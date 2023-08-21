//
//  UserView.swift
//  RestFullApi
//
//  Created by ceksi on 22.08.2023.
//

import SwiftUI

struct UserView: View {
    
    let user: User
    
    var body: some View {
        VStack{
            Text(user.name)
                .font(.title)
           
        }
        .navigationBarTitle(user.name)
    }
}



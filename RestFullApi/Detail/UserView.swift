//
//  UserView.swift
//  RestFullApi
//
//  Created by ceksi on 22.08.2023.
//

import SwiftUI

struct UserView: View {
    
    let user: User
    @State var posts: [Post] = []
    
    var body: some View {
        VStack{
            Text(user.name)
                .font(.title)
            
            NavigationView{
                List(posts) { post in
                    NavigationLink(destination:PostView(post: post)) {
                        Text(post.title)
                    }
                }
                .navigationBarTitle("Posts")
            }
            .onAppear {
                APIManager().fetchPosts(forUserWithID: user.id)  { fetchPosts in
                    self.posts = fetchPosts
                    
                }      }
           
        }
        .navigationBarTitle(user.name)
    }
}



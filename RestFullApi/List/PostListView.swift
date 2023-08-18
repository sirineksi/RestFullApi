//
//  PostListView.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import SwiftUI

struct PostListView: View {
    
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationView{
            List(posts) { post in
                NavigationLink(destination:PostView(post: post)) {
                    Text(post.title)
                }
            }
            .navigationBarTitle("Posts")
        }
        .onAppear {
            APIManager().fetchPosts { fetchedPost in
                self.posts = fetchedPost
                
            }
        }
    }
}



//
//  ContentView.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State var posts: [Post] = []
    
    
    var body: some View {
        NavigationView{
            List(posts) { post in
                NavigationLink(destination:PostDetail(post: post)) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

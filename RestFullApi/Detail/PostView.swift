//
//  PostDetail.swift
//  RestFullApi
//
//  Created by sirineksi on 17.08.2023.
//

import SwiftUI

struct PostView: View {
    
    let post: Post
    
    var body: some View {
        VStack{
            Text(post.title)
                .font(.title)
            Text(post.body)
                .padding()
        }
        .navigationBarTitle(post.title)
    }
}

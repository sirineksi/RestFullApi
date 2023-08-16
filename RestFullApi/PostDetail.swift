//
//  PostDetail.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import SwiftUI

struct PostDetail: View {
    
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





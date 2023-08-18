//
//  CommentView.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import SwiftUI

struct CommentView: View {
    
    let comment: Comment
    
    var body: some View {
        VStack{
            Text(comment.name).padding()
            font(.title)
            Text(comment.email).padding()
            font(.title2)
        }
        .navigationBarTitle(comment.name)
    }
}


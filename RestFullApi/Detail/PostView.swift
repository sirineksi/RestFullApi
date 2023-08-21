//
//  PostDetail.swift
//  RestFullApi
//
//  Created by sirineksi on 17.08.2023.
//

import SwiftUI

struct PostView: View {
    
    let post: Post
    @State var comments: [Comment] = []
    
    var body: some View {
        VStack{
            Text(post.title)
                .font(.title)
            Text(post.body)
                .padding()
            
            NavigationView{
                List(comments) { comment in
                    NavigationLink(destination:CommentView(comment: comment)) {
                        Text(comment.name)
                    }
                }
                .navigationBarTitle("Comments")
            }
            .onAppear {
                APIManager().fetchComments(forPostWithID: post.id) { fetchedComment in
                    self.comments = fetchedComment
                    
                }
            }
        }
        .navigationBarTitle(post.title)
    }
}

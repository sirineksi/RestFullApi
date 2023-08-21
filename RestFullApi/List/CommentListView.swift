//
//  CommentListView.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import SwiftUI

struct CommentListView: View {
    
        
        @State var comments: [Comment] = []
        
        var body: some View {
            NavigationView{
                List(comments) { comment in
                    NavigationLink(destination:CommentView(comment: comment)) {
                        Text(comment.name)
                    }
                }
                .navigationBarTitle("Comments")
            }
            .onAppear {
                APIManager().fetchComments { fetchedComment in
                    self.comments = fetchedComment
                    
                }
            }
        }
    }
    




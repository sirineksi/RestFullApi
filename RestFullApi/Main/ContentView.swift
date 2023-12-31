//
//  ContentView.swift
//  RestFullApi
//
//  Created by sirineksi on 17.08.2023.
//

import SwiftUI

struct ContentView: View {
   
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink(destination:CommentListView()) {
                    Text("Comment List View")
                }.padding()
               
                NavigationLink(destination:PostListView()) {
                    Text("Post List View")
                }.padding()
                
                NavigationLink(destination:AlbumListView()) {
                    Text("Album List View")
                }.padding()
                
                NavigationLink(destination:PhotoListView()) {
                    Text("Photo List View")
                }.padding()
                
                NavigationLink(destination:TodoListView()) {
                    Text("Todo List View")
                }.padding()
                NavigationLink(destination:UserListView()) {
                    Text("User List View")
                }.padding()
            }
            
           
            
        }
        .navigationBarTitle("Main View")
        
        
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  TodoListView.swift
//  RestFullApi
//
//  Created by ceksi on 20.08.2023.
//

import SwiftUI

struct TodoListView: View {
    
    @State var todos: [Todo] = []
    
    var body: some View {
        NavigationView{
            List(todos) { todo in
                NavigationLink (destination: TodoView()) {
                    Text(todo.title)
                }
            }
            .navigationBarTitle("Todo")
        }
        .onAppear {
            APIManager().fetchTodos { fetchedTodo in
                self.todos = fetchedTodo
            }
        }
    }
}



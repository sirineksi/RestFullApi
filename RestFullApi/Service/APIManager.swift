//
//  APIManager.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import Foundation

class APIManager {
    
    func fetchPosts(completion: @escaping ([Post]) -> Void)  {
        guard let url = URL( string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                        return
                    }
                    
                    guard let data = data else {
                        return
                    }
                    
                    do {
                        let posts = try JSONDecoder().decode([Post].self, from: data)
                        DispatchQueue.main.async {
                            completion(posts)
                        }
                    } catch {
                        print("Error decoding data: \(error.localizedDescription)")
                    }
                }.resume()
            
        }
    
    func fetchComments(completion: @escaping ([Comment]) -> Void)  {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                return
            }
            do {
                let comments = try JSONDecoder().decode([Comment].self, from: data)
                DispatchQueue.main.async {
                    completion(comments)
                }
            }catch{
                print("Error decoding data: \(error.localizedDescription)")
            }

        }.resume()
    }
    
    func fetchComments( forPostWithID postID: Int, completion: @escaping ([Comment]) -> Void)  {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments?postId=\(postID)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                return
            }
            do {
                let comments = try JSONDecoder().decode([Comment].self, from: data)
                DispatchQueue.main.async {
                    completion(comments)
                }
            }catch{
                print("Error decoding data: \(error.localizedDescription)")
            }

        }.resume()
    }
    
    func fetchAlbums(completion: @escaping ([Album]) -> Void) {
        
        
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/albums") else {
            return
        
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
        
        
        guard let data = data else {
            return
        }
        
        
        do {
            let albums = try JSONDecoder().decode([Album].self, from: data)
            DispatchQueue.main.async {
                completion(albums)
            }
        }catch {
            
            print("Error decoding data: \(error.localizedDescription)")
        }
       
        }
        .resume()
       }
     
    func fetchPhotos(completion: @escaping ([Photo]) -> Void ) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
       
            
            guard let data = data else {
                return
            }
            
            do {
                let photos = try JSONDecoder().decode([Photo].self, from: data)
                DispatchQueue.main.async {
                    completion(photos)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }

        }
        .resume()
    }
    
    func fetchPhotos( forPostWithID albumId: Int, completion: @escaping ([Photo]) -> Void)  {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos?albumId=\(albumId)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
       
            
            guard let data = data else {
                return
            }
            
            do {
                let photos = try JSONDecoder().decode([Photo].self, from: data)
                DispatchQueue.main.async {
                    completion(photos)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }

        }
        .resume()
    }
    
    
    func fetchTodos(completion: @escaping ([Todo]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription) ")
                return
            }
            
            guard let data = data else {
                return
            }
           
            do {
                let todos = try JSONDecoder().decode([Todo].self, from: data)
                DispatchQueue.main.async {
                    completion(todos)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
            
            
            
        }
        .resume()
    }
    
    func fetchUsers(completion: @escaping ([User]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return
        }
        
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                return
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    completion(users)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
        }
        .resume()
    }
    
    func fetchPosts( forUserWithID userId: Int, completion: @escaping ([Post]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts?userId=\(userId)") else {
            return
        }
        
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                return
            }
            
            do {
                let users = try JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    completion(users)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
        }
        .resume()
    }
}

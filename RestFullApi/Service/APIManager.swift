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

}

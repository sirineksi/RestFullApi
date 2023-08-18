//
//  Model.swift
//  RestFullApi
//
//  Created by ceksi on 17.08.2023.
//

import Foundation

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}

struct Comment: Codable, Identifiable {
   
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}

struct Album: Codable, Identifiable {
   
    let userId: Int
    let id: Int
    let title: String
}

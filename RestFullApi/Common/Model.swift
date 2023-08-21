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

struct Photo: Codable, Identifiable {
    
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}

struct Todo: Codable, Identifiable {
    
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

// Users
struct Geo: Codable {
    let lat: String
    let lng: String
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
} // end users


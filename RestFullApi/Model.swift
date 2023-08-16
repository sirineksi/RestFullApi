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

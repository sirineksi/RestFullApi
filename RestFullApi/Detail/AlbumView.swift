//
//  AlbumView.swift
//  RestFullApi
//
//  Created by ceksi on 18.08.2023.
//

import SwiftUI

struct AlbumView: View {
    let album: Album
    
    var body: some View {
        
         
            VStack{
                Text(album.title)
                    .font(.title)
               
            }
            .navigationBarTitle(album.title)
        
    }
}



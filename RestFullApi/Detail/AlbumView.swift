//
//  AlbumView.swift
//  RestFullApi
//
//  Created by ceksi on 18.08.2023.
//

import SwiftUI

struct AlbumView: View {
    let album: Album
    @State var photos: [Photo] = []
 
    var body: some View {
        
         
            VStack{
                Text(album.title)
                    .font(.title)
                
                Text("albumId: \(album.id)")
               
                NavigationView{
                    List(photos) { photo in
                        NavigationLink (destination: PhotoView(photo: photo)) {
                            Text(photo.title)
                        }
                        
                    }
                    .navigationBarTitle("Photo")
                }
                .onAppear {
                    APIManager().fetchPhotos (forPostWithID: album.id){ fetchedPhoto  in
                        self.photos = fetchedPhoto
                        
                    }
                }
            }
            .navigationBarTitle(album.title)
        
    }
}



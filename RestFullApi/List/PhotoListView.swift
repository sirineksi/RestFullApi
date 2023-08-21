//
//  PhotoListView.swift
//  RestFullApi
//
//  Created by ceksi on 20.08.2023.
//

import SwiftUI

struct PhotoListView: View {
    
    @State var photos: [Photo] = []
    
    var body: some View {
        
        NavigationView{
            List(photos) { photo in
                NavigationLink (destination: PhotoView(photo: photo)) {
                    Text(photo.title)
                }
                
            }
            .navigationBarTitle("Photo")
        }
        .onAppear {
            APIManager().fetchPhotos { fetchedPhoto  in
                self.photos = fetchedPhoto
                
            }
        }
    }
}



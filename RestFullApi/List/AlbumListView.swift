//
//  AlbumListView.swift
//  RestFullApi
//
//  Created by ceksi on 18.08.2023.
//

import SwiftUI

struct AlbumListView: View {
    @State var albums: [Album] = []
    
    var body: some View {
        
      
        
       
            
            NavigationView{
                List(albums) { album in
                    NavigationLink(destination: AlbumView(album: album )) {
                        Text(album.title)
                    }
                }
                .navigationBarTitle("Album")
            }
            .onAppear {
                APIManager().fetchAlbums{ fetchedAlbum in
                    self.albums = fetchedAlbum
                    
                
            }
        }
    }
}



//
//  PhotoView.swift
//  RestFullApi
//
//  Created by ceksi on 20.08.2023.
//

import SwiftUI

struct PhotoView: View {
    
    let photo: Photo
    
    var body: some View {
        VStack{
            Text(photo.title)
                .font(.title)
           
        }
        .navigationBarTitle(photo.title)
    }
}



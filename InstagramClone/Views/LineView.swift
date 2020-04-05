//
//  LineView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct LineView: View {
    //let model:LineViewViewModel
    let images: [Image]
    
    var body: some View {
        HStack(spacing: 2){
            ForEach(0..<images.count){ image in
                PostPreviewView(image: self.images[image])
            }
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView( images: [Image("ic_logo"), Image("ic_logo"), Image("ic_logo")])
    }
}

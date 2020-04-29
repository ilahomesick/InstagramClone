//
//  LineView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct LineView: View {
    @ObservedObject var model:LineViewViewModel
        
    init(posts: [Post]){
           self.model = LineViewViewModel(posts: posts)
       }
    
    var body: some View {
        HStack(spacing: 2){
            ForEach(0..<self.model.posts.count){ post in
                PostPreviewView(post: self.model.posts[post])
            }
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView( posts: [Post(post: RetrievePostQuery.Data.Post(imageUrl: "877BE21F-F83A-41BC-9FA4-F80CB75B3728-10597-00000D8386F28FF6.jpeg",description: "ciao", date: "", user: "Ilario"), image: Image("ic-logo"))])
    }
}

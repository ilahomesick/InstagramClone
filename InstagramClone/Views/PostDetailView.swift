//
//  PostDetailView.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    
    var model: PostViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("ic_logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .shadow(radius: 3)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                    .padding( 5)
                
                VStack(alignment: .leading){
                    Text(self.model.getUser()).font(.headline).foregroundColor(Colors.lightBlueColor)
                    Text(self.model.getDate()).foregroundColor(Color(.lightGray)).font(.subheadline)
                }
                
                Spacer()
                
                Button(action: {}){
                    Image("three-dots")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .padding(.trailing, 5)
            }
            self.model.getImage().map
                { image in
                    image.resizable()
                        .frame(width: 415, height: 415)
                    
            }
            
            PostBottomView()
            CommentsPreviewView()
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(model: PostViewModel(post: Post(post: RetrievePostQuery.Data.Post(imageUrl: "877BE21F-F83A-41BC-9FA4-F80CB75B3728-10597-00000D8386F28FF6.jpeg",description: "ciao", date: "", user: "Ilario"), image: Image("ic-logo"))))
    }
}

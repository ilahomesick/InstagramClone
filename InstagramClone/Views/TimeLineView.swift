//
//  ScrollView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct TimeLineView: View {
    
    @ObservedObject var model: TimeLineViewModel
    
    init(posts: [Post]){
        self.model = TimeLineViewModel(posts: posts)
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                ForEach(0..<self.model.lines.count) { line in
                    
                    LineView(posts: self.model.lines[line])
                        
                }
                .scaledToFill()
                
        
            }
        }
    }
}


struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
//        TimeLineView(images: [Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo")])
        TimeLineView(posts: [Post(post: RetrievePostQuery.Data.Post(imageUrl: "877BE21F-F83A-41BC-9FA4-F80CB75B3728-10597-00000D8386F28FF6.jpeg",description: "ciao", date: "", user: "Ilario"), image: Image("ic-logo"))])
    }
}

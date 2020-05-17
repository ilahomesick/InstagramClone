//
//  TimeLineDetailView.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct TimeLineDetailView: View {
    @ObservedObject var model:TimeLineDetailViewModel

    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                //ForEach(self.model.posts, id: \.id) { post in
                if(self.model.posts.count>0){
                    ForEach(self.model.posts, id: \.date) { post in
                    PostDetailView(model: PostViewModel(post: post)).padding(.bottom, 20)
                    }
                }
                else{
                    if(self.model.posts.count>0){
                    Text("loading...")
                    }
                }
                //}
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        }
    }
}

struct TimeLineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineDetailView(model: TimeLineDetailViewModel())
    }
}

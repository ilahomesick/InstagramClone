//
//  CommentsPreviewView.swift
//  InstagramClone
//
//  Created by ilario salatino on 12.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct CommentsPreviewView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Liked by X and Y").foregroundColor(Colors.lightBlueColor)
            Text("See all comments").foregroundColor(Color(.lightGray)).font(.subheadline)
        }.padding(5)
    }
}

struct CommentsPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsPreviewView()
    }
}

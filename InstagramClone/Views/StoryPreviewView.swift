//
//  SwiftUIView.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct StoryPreviewView: View {
    var body: some View {
        HStack{
            VStack {
                Image("ic_logo")
                .resizable()
                .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .shadow(radius: 3)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                    
                Text("Your Stories")
                    .font(.caption)
            }.padding(2)
        }
    }
}

struct StoryPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        StoryPreviewView()
    }
}

//
//  PostBottomView.swift
//  InstagramClone
//
//  Created by ilario salatino on 12.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PostBottomView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}){
                    Image("heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Button(action: {}){
                    Image("comment")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Button(action: {}){
                    Image("paper-plane")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Spacer()
                
                Button(action: {}){
                    Image("bookmark")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.padding(.trailing, 5)
            }
        }
    }
}

struct PostBottomView_Previews: PreviewProvider {
    static var previews: some View {
        PostBottomView()
    }
}

//
//  BottomView.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct BottomView: View {
    @State var image:UIImage? = UIImage(imageLiteralResourceName: "home")
    
    var body: some View {
        HStack{
             NavigationLink(destination: HomeView()){
                Image("home")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             NavigationLink(destination: HomeView()){
                 Image("search")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
            NavigationLink(destination:PhotoUploadView()){
                 Image("plus")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             NavigationLink(destination:HomeView()){
                 Image("heart")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
            NavigationLink(destination:ProfileView(model: ProfileViewModel(username: "Ilario"))){
                 Image("profile")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
        }.frame(height: 35)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}

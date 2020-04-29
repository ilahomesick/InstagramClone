//
//  ProfileView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var model: ProfileViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    Spacer()
                    Text(NSLocalizedString("username", comment: ""))
                    .foregroundColor(Colors.lightBlueColor)
                    .fontWeight(.semibold)
                        .padding(.leading, 10.0)
                    
                    Button(action: {}){
                        Image("arrow-down")
                        .resizable()
                        .frame(width: 10, height: 10)
                    }
                    .padding(.top, 5)
                    Spacer()
                    
                    Button(action: {}){
                        Image("menu")
                        .resizable()
                        .frame(width: 20, height: 20)
                    }.padding()
                }.frame(height: 50)
                .padding(.leading, 10)
                
                HStack{
                    VStack{
                        Image("ic_logo")
                        .resizable()
                        .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                            .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                        
                        Text("Your Name")
                            .foregroundColor(Colors.lightBlueColor)
                            .fontWeight(.semibold)
                    }.frame(height: 130.0)
                    
                    
                    VStack{
                        Text("10")
                        .font(.system(size: 30))
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: true, vertical: false)
                        
                        Text(NSLocalizedString("profile_posts", comment: ""))
                        .font(.system(size: 13))
                            .foregroundColor(Colors.lightBlueColor)
                            .lineLimit(nil)
                        }.padding(.leading, 30).frame(height: 130.0)
                    .fixedSize(horizontal: true, vertical: false)
                        
                        
                    
                    VStack{
                        Text("100")
                        .font(.system(size: 30))
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold).fixedSize(horizontal: true, vertical: false)
                        .fixedSize(horizontal: true, vertical: false)
                        
                        Text(NSLocalizedString("profile_followers", comment: ""))
                        .font(.system(size: 13))
                        .foregroundColor(Colors.lightBlueColor)
                    }.padding().frame(width: nil, height: 130.0)
                    .fixedSize(horizontal: true, vertical: false)
                    
                    VStack{
                        Text("1000")
                        .font(.system(size: 30))
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold)
                        
                        Text(NSLocalizedString("profile_following", comment: ""))
                        .font(.system(size: 13))
                        .foregroundColor(Colors.lightBlueColor)
                    }
                    .frame(height: 130.0)
                    
                }.frame(height: 130.0)
                    .padding(.leading, 10)
                
                 Button(action: {}){
                    Text(NSLocalizedString("profile_edit", comment: ""))
                    .fontWeight(.bold)
                        .foregroundColor(Colors.lightBlueColor)
                        .padding(.top, 20)
                }.frame(width: 400)
                
                Divider()
                
                TimeLineView(posts: self.model.profile.posts).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                
                Divider()
                                
                
                
            }
        }.onAppear{
            self.model.getImages()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(model: ProfileViewModel(username: "Ilario"))
    }
}

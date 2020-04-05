//
//  HomeView.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var image:UIImage? = UIImage(imageLiteralResourceName: "home")
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    Button(action: {}){
                        Image("camera")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()
                    
                    Spacer()

                    Text(NSLocalizedString("app_name", comment: ""))
                        .font(.largeTitle)
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.semibold)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).padding()

                    Spacer()

                    Button(action: {}){
                        Image("paper-plane")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()

                }.frame(height: 50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                    }
                }.frame(height: 70)
                
                TimeLineDetailView(model: TimeLineDetailViewModel())
                
                BottomView()
            }
            PhotoUploadView()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

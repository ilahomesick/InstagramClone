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
        
        NavigationView{
            
            GeometryReader{ geometry in
                VStack{
                    StoryTimelineView()
                    TimeLineDetailView(model:TimeLineDetailViewModel())
                    BottomView()
                }
            }.navigationBarItems(leading: NavigationLink(destination: HomeView()){
                Image("camera")
                    .resizable()
                    .frame(width: 30, height: 30)
                }, trailing: NavigationLink(destination: HomeView()){
                    Image("paper-plane")
                        .resizable()
                        .frame(width: 30, height: 30)
            }).navigationBarTitle(Text(NSLocalizedString("app_name", comment: ""))
                .font(.largeTitle)
                .foregroundColor(Colors.lightBlueColor)
                .fontWeight(.semibold),displayMode: .inline)
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

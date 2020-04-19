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
    
    init(images: [Image]){
        self.model = TimeLineViewModel(images: images)
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                ForEach(0..<self.model.lines.count) { line in
                    
                    LineView(images: self.model.lines[line])
                    
                }
        
            }
        }
    }
}


struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView(images: [Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo"), Image("ic_logo")])
    }
}

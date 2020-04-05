//
//  ScrollView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct TimeLineView: View {
    let images: [Image]
    let lines: [[Image]]
    
    init(images: [Image]){
        self.images = images
        self.lines = images.chunked(into: 3)
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                ForEach(0..<lines.count) { line in
                    
                    LineView(images: self.lines[line])
                    
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

//
//  StoryTimelineView.swift
//  InstagramClone
//
//  Created by ilario salatino on 20.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct StoryTimelineView: View {
    var body: some View {
        VStack{ 
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    StoryPreviewView()
                    StoryPreviewView()
                    StoryPreviewView()
                    StoryPreviewView()
                    StoryPreviewView()
                    StoryPreviewView()
                }
            }
        }
    }
}

struct StoryTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        StoryTimelineView()
    }
}

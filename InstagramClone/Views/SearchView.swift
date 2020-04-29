//
//  SearchView.swift
//  InstagramClone
//
//  Created by ilario salatino on 27.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var model = SearchViewModel()
    let users: [String?] = [String?]()
    @State private var searchText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                SearchBar(text: $searchText)
                List{
                    
                    ForEach(self.users.filter {
                        self.searchText.isEmpty ? true : $0!.contains(self.searchText.lowercased())
                    }, id: \.self){ car in
                        
                        Text(car!)
                        
                    }
                }
            }
        }
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

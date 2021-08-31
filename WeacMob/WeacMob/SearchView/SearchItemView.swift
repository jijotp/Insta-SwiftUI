//
//  SearchView.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct SearchItemView: View {
    
    @State private var showDetailView = false
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        VStack {
            HStack {
                SearchBar(searchText: searchText, searching: $searching)
            }
        }
        .frame(height: 47, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
    }
}

struct SearchItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemView()
    }
}

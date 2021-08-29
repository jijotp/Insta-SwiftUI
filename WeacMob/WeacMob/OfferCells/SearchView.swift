//
//  SearchView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct SearchView: View {
    
    var offer = OfferDataModel()
    @State private var showDetailView = false
    @State var searchText = ""
    @State var searching = false
   
    
    var body: some View {
        VStack(alignment: .leading) {
            //Spacer(minLength: 12)
            Text("Stores")
                .foregroundColor(.black)
                .lineLimit(1)
                .font(Font.custom("SFProText-Semibold", size: 22))
                .frame(alignment: .leading)
            //               NavigationLink(destination: DetailView(promotion: self.promotion), isActive: self.$showDetailView) {
            //                EmptyView()
            //            }
            SearchBar(searchText: searchText, searching: $searching)
           // Spacer(minLength: 12)
        }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

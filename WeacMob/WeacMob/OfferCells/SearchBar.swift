//
//  searchBar.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText = ""
    @Binding var searching: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color(hex: "#E5E5E5"))
            HStack {
                Image(systemName: "magnifyingglass").padding(.leading, 8)
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(Color.init(hex: "#FAFAFA"))
            .padding(0)
           
        }
        .frame(height: 47)
        .padding(0)
        .border(Color.init(hex: "#E5E5E5"), width: 1)
        .cornerRadius(4)
    }
 }

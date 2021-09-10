//
//  ProductListView.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct ProductListView: View {
    var homeData = HomeDataModel()
    
    var body: some View {
        VStack (alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(homeData.values ?? [], id: \.self) { item in
                        ProductView(values: item)
                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                    }
                    .padding(0)
                }
            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}

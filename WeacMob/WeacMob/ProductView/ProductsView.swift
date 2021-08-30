//
//  ProductView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        VStack (alignment: .leading) {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach((1...10).reversed(), id: \.self) { item in
                    ProductView()
                }
                .padding(0)
            }
        }.padding(EdgeInsets(top: 22, leading: 0, bottom: 41, trailing: 0))
        Spacer()
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}

//
//  ProductView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductView: View {
    
    @State var isFavorite = false
    
    var body: some View {
        VStack() {
            ProductLIkeView()
            Image.init("sampleImage")
                .resizable()
                .frame(width: (UIScreen.main.bounds.width / 3 ) - 16, height: 90)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            ProductAmountView()
            ProductCartView()
        }.padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
        .frame(width: UIScreen.main.bounds.width / 3, height: 284, alignment: .bottomLeading)
        .border(Color.init(hex: "#ededed"), width: 1)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}

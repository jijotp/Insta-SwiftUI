//
//  ProductView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductView: View {
    
    @State var isFavorite = false
    
    var values = ProductModel()
    
    var body: some View {
        VStack() {
            ProductLIkeView(values: values)
            RemoteImageView(withURL: "https://picsum.photos/200/200")
                .frame(width: (UIScreen.main.bounds.width / 3 ) - 16, height: 90)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            ProductAmountView(values: values)
            // ProductCartView()
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width / 3, height: 284, alignment: .topLeading)
        .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
        .border(Color.init(hex: "#ededed"), width: 1)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}

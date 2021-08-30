//
//  ProductImageView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductImageView: View {
    
    
    var body: some View {
        GeometryReader { metrics in
            
//            HStack {
//            ZStack() {
//                Image.init("sampleImage")
//                    .resizable()
//                    .frame(width: metrics.size.width - 16, height: 105)
//                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
//                Image.init("textOffer")
//                    .resizable()
//                    .frame(width: metrics.size.width / 2, height: 20)
//                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
//                    .aspectRatio(contentMode: .fit)
//            }
//            }.frame(width: metrics.size.width - 16, height: 105,alignment: .topLeading)
            Image.init("sampleImage")
                .resizable()
                .frame(width: (UIScreen.main.bounds.width / 3 ) - 16, height: 90)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        }
    }
}

struct ProductImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductImageView()
    }
}

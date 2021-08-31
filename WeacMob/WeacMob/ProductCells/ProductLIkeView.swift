//
//  ProductLIkeView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductLIkeView: View {
    @State var isFavorite = false
    
    var values = ProductModel()
    
    var body: some View {
        HStack {
            if let offer = values.offer, offer != 0 {
                ZStack {
                    Image.init("Path 30035")
                        .resizable()
                        .frame(width: 55,height: 17)
                    Text("\(offer) % Off")
                        .font(Font.custom("SFProDisplay-Bold", size: 10))
                        .foregroundColor(Color.white)
                        .frame(alignment: .leading)
                }
            }
            Spacer()
            let image = isFavorite ?  "Path 29617" : "Group 8485"
            Image.init(image).frame(width: 18,height: 15)
                .onTapGesture {
                    isFavorite = !isFavorite
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
        }
    }
}

struct ProductLIkeView_Previews: PreviewProvider {
    static var previews: some View {
        ProductLIkeView()
    }
}

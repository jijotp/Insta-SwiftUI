//
//  GridProductsView.swift
//  WeacMob
//
//  Created by Jijo on 03/09/21.
//

//
//  GridProductsView.swift
//  WeacMob
//
//  Created by Jijo on 03/09/21.
//

import SwiftUI

struct GridProductsView: View {
    
    @State var isFavorite = false
    
    var values = ProductModel()
    
    var body: some View {
       
        VStack(alignment: .leading) {
            ProductLIkeView(values: values)
            RemoteImageView(withURL: "https://picsum.photos/50/50")
                .frame(width: (UIScreen.main.bounds.width / 2) - 16, height: 90)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            VStack(alignment: .leading, spacing: 4) {
                let is_express  = values.is_express ?? true ? 1.0 : 0.0
                Image.init("Group 10620")
                    .resizable()
                    .frame(width: 22,height: 14)
                    .opacity(is_express)
                let actualPrice  = (values.offer ?? 0) == 0 ? 0.0 : 1.0
                Text(values.actual_price ?? "")
                    .font(Font.custom("SFProText-Regular", size: 12))
                    .strikethrough(true)
                    .lineLimit(1)
                    .foregroundColor(Color.init(hex: "#575959"))
                    .frame(alignment: .leading)
                    .opacity(actualPrice)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2))
                Text(values.offer_price ?? "")
                    .font(Font.custom("SFProDisplay-Bold", size: 15))
                    .lineLimit(1)
                    .foregroundColor(Color.black)
                    .frame(alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2))
                Text(values.name ?? "")
                    .font(Font.custom("SFProDisplay-Regular", size: 12))
                    .lineLimit(2)
                    .foregroundColor(Color.init(hex: "#575959"))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2))
                    .frame(height: 34)
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
            // ProductCartView()
            VStack(alignment: .center) {
            Spacer().frame(maxWidth: .infinity)
                AddButton()
                Spacer().frame(maxWidth: .infinity)
            }.background(Color.white)
        }.frame(width: UIScreen.main.bounds.width / 2, height: 284, alignment: .topLeading)
        .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
        .border(Color.init(hex: "#ededed"), width: 1)
        }
}

struct GridProductsView_Previews: PreviewProvider {
    static var previews: some View {
        GridProductsView()
    }
}

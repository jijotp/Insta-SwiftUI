//
//  ProductAmountView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductAmountView: View {
    
    var values = ProductModel()
    
    var body: some View {
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
            ProductCartView()
        }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
    }
    
    func printFonts() {
        for familyName in UIFont.familyNames {
            print("\n-- \(familyName) \n")
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print(fontName)
            }
        }
    }
}

struct ProductAmountView_Previews: PreviewProvider {
    static var previews: some View {
        ProductAmountView()
    }
}

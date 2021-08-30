//
//  ProductAmountView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductAmountView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image.init("Group 10620")
                .resizable()
                .frame(width: 22,height: 14)
            Text("₹31,000")
                .font(Font.custom("SFProText-Regular", size: 12))
                .strikethrough(true)
                .lineLimit(1)
                .foregroundColor(Color.init(hex: "#575959"))
                .frame(alignment: .leading)
            Text("₹22,000")
                .font(Font.custom("SFProDisplay-Semibold", size: 15))
                .lineLimit(1)
                .foregroundColor(Color.black)
                .frame(alignment: .leading)
            Text("Tostitos Scoops Spicy Tortilla Chips Tostitos Scoops Spicy Tortilla Chips")
                .font(Font.custom("SFProText-Regular", size: 14))
                .lineLimit(2)
                .foregroundColor(Color.init(hex: "#575959"))
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

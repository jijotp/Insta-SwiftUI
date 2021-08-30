//
//  OfferItemView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct OfferItemView: View {
    
    var offer = OfferDataModel()
    @State private var showDetailView = false
    
    var body: some View {
        VStack {
            Text(self.offer.offer_category ?? "")
                .padding(EdgeInsets(top: 11, leading: 27, bottom: 11, trailing: 27))
                .foregroundColor(.black)
                .background(Color.random)
                .lineLimit(1)
                .font(Font.custom("SFProDisplay-Semibold", size: 13))
                .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
//               NavigationLink(destination: DetailView(promotion: self.promotion), isActive: self.$showDetailView) {
//                EmptyView()
//            }
        }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
    }
}

struct OfferItemView_Previews: PreviewProvider {
    static var previews: some View {
        OfferItemView()
    }
}

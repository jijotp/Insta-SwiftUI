//
//  OfferItemsCell.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct OfferItemsCell: View {
    
    var offers = [OfferDataModel]()
    
    var body: some View {
        VStack (alignment: .leading){
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(offers, id: \.self) { item in
                    OfferItemView(offer: item)
                }
                .padding(0)
            }
        }.padding(EdgeInsets(top: 22, leading: 0, bottom: 41, trailing: 0))
        }
    }
}

struct OfferItemsCell_Previews: PreviewProvider {
    static var previews: some View {
        OfferItemsCell()
    }
}

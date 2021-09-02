//
//  OfferCell.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct OfferCell: View {
    
    var offers = [OfferDataModel]()
    
    var body: some View {
        VStack (alignment: .leading){
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(offers, id: \.self) { item in
                    OfferCollectionViewCell(offer: item).id(UUID())
                }
                .padding(0)
            }
        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct OfferCell_Previews: PreviewProvider {
    static var previews: some View {
        OfferCell()
    }
}

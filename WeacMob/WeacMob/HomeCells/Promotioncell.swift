//
//  Promotioncell.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct Promotioncell: View {
    var promotions = [PromotionDataModel]()
    
    @State private var showDetailView = false
    
    var body: some View {
        VStack (alignment: .leading){
            Spacer(minLength: 20)
            HStack {
                Text("Promotions")
                    .padding(0)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .font(Font.custom("SFProDisplay-Semibold", size: 17))
                    .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
                Spacer()
                Text("See All >")
                    .padding(0)
                    .foregroundColor(Color(hex: "#666666"))
                    .lineLimit(1)
                    .font(Font.custom("SFProDisplay-Medium", size: 11))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                    .onTapGesture {
                        self.showDetailView = true
                    }
            }
            Spacer(minLength: 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(promotions, id: \.self) { item in
                        PromotionCollectionViewCell(promotion: item)
                    }
                    .padding(2)
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            Spacer(minLength: 20)
            
//            NavigationLink(destination: SecondVC(), isActive: self.$showDetailView) {
//                EmptyView()
//            }
        }
    }
}

struct Promotioncell_Previews: PreviewProvider {
    static var previews: some View {
        Promotioncell()
    }
}

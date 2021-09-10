//
//  PromotionCollectionViewCell.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct PromotionCollectionViewCell: View {
    
    @State private var showDetailView = false
    
    var  promotion = PromotionDataModel()
    
    var body: some View {
        let width = Int(UIScreen.main.bounds.width * 0.6)
        let height = Int(UIScreen.main.bounds.height * 0.21)
        
        debugPrint("https://picsum.photos/\(width)/\(height)")
        return VStack(alignment: .leading, spacing: 0) {
            
            RemoteImageView(withURL: "https://picsum.photos/\(width)/\(height)")
                .frame(width: UIScreen.main.bounds.width * 0.69, height: UIScreen.main.bounds.height * 0.21)
                .onTapGesture {
                    self.showDetailView = true
                }
                .cornerRadius(3)
            Spacer(minLength: 15)
            VStack(alignment: .leading, spacing: 0) {
                Text(self.promotion.promotions_name ?? "")
                    .padding(0)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .font(Font.custom("SFProText-Regular", size: 16))
                    
                    .frame(width: UIScreen.main.bounds.width * 0.69, height: 20, alignment: .leading)
                Text(self.promotion.about_promotions ?? "")
                    .padding(0)
                    .foregroundColor(Color(hex: "#8A8A8F"))
                    .lineLimit(1)
                    .font(Font.custom("SFProText-Regular", size: 10))
                    
                    .frame(width: UIScreen.main.bounds.width * 0.69, height: 20, alignment: .leading)
                
            }
            NavigationLink(destination:  SecondVC(), isActive: self.$showDetailView) {
                EmptyView()
            }
            
        }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
    }
}

struct PromotionCollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        PromotionCollectionViewCell()
    }
}

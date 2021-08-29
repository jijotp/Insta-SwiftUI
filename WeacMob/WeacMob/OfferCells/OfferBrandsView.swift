//
//  OfferBrandsView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct OfferBrandsView: View {
    var body: some View {
        VStack {
            Spacer(minLength: 29)
            RemoteImageView(withURL: "https://picsum.photos/200/200")
                .clipShape(Circle())
                .overlay( Circle()
                            .strokeBorder(
                                AngularGradient(gradient: Gradient(colors: [.red]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                                lineWidth: 1
                            ))
                .frame(width: 67, height: 67)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Color.clear)
            Text("")
                .padding(0)
                .foregroundColor(.black)
                .lineLimit(1)
                .font(Font.custom("SFProText-Regular", size: 10))
              
                .frame(width: 67, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.clear)
//               NavigationLink(destination: DetailView(promotion: self.promotion), isActive: self.$showDetailView) {
//                EmptyView()
//            }
            Spacer(minLength: 20)
        }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
    }
}

struct OfferBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        OfferBrandsView()
    }
}

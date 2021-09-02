//
//  StoryViews.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct StoryViews: View {
    
    @State var isFavorite = false
    var values = ProductModel()
    
    var body: some View {
        VStack {
            RemoteImageView(withURL: values.image_url ?? "")
                .background(Color.random)
                .clipShape(Circle())
                .frame(width: 67, height: 67)
                .onTapGesture {
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            Text(self.values.name ?? "")
                .padding(0)
                .foregroundColor(.black)
                .lineLimit(1)
                .font(Font.custom("SFProText-Medium", size: 13))
              
                .frame(width: 67, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.clear)
//               NavigationLink(destination: DetailView(promotion: self.promotion), isActive: self.$showDetailView) {
//                EmptyView()
//            }
        }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
    }
}

struct StoryViews_Previews: PreviewProvider {
    static var previews: some View {
        StoryViews()
    }
}

//
//  BannerList.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct BannerList: View {
    var homeData = HomeDataModel()
    
    var body: some View {
        VStack (alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(homeData.values ?? [], id: \.self) { item in
                        BannerView(values: item)
                    }
                    .padding(0)
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct BannerList_Previews: PreviewProvider {
    static var previews: some View {
        BannerList()
    }
}

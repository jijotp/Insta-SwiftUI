//
//  BannerView.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct BannerView: View {
    
    @State var isFavorite = false
    
    var values = ProductModel()
    
    var body: some View {
        VStack (alignment: .leading) {
            RemoteImageView(withURL: values.banner_url ?? "")
                .frame(width: UIScreen.main.bounds.width - 37, height: UIScreen.main.bounds.height * 0.25)
                .aspectRatio(contentMode: ContentMode.fit)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 0))
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}

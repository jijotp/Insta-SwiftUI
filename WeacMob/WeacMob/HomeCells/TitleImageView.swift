//
//  TitleImageView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct TitleImageView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image.init("Banner")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.26310)
                .aspectRatio(contentMode: ContentMode.fit)
            VStack(alignment: .leading) {
            Text("Lorem ipsum")
                .font(Font.custom("SFProDisplay-Semibold", size: 25))
                .foregroundColor(Color.white)
                Text("Lorem ipsum dolor sit amet consectetur")
                    .font(Font.custom("SFProDisplay-Medium", size: 9))
                    .foregroundColor(Color.white)
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 23, trailing: 0))
        }
    }
}

struct TitleImageView_Previews: PreviewProvider {
    static var previews: some View {
        TitleImageView()
    }
}

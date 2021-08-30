//
//  ProductLIkeView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductLIkeView: View {
    @State var isFavorite = false
    var body: some View {
        HStack {
        ZStack {
            Image.init("Path 30035")
                .resizable()
                .frame(width: 50,height: 17)
            Text("12 % Off")
                .font(Font.custom("SFProDisplay-Bold", size: 10))
                .foregroundColor(Color.white)
                .frame(alignment: .leading)
            
        }
        //                .padding(0)
        //                .foregroundColor(.black)
        //                .lineLimit(1)
        //                .font(Font.custom("SFProDisplay-Semibold", size: 17))
        //                .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
        
        Spacer()
        let image = isFavorite ?  "Path 29617" : "Group 8485"
        Image.init(image).frame(width: 18,height: 15)
            .onTapGesture {
                isFavorite = !isFavorite
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
        }
    }
}

struct ProductLIkeView_Previews: PreviewProvider {
    static var previews: some View {
        ProductLIkeView()
    }
}

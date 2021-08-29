//
//  StoreListView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct StoreListView: View {
    var store = Store()
    var body: some View {
        HStack {
            Image.init(store.image)
                .frame(width: 62, height: 62)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Color.clear)
            VStack(alignment: .leading) {
            Text(store.name)
                .padding(0)
                .foregroundColor(.black)
                .lineLimit(1)
                .font(Font.custom("SFProText-Regular", size: 17))
                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.clear)
                
                Text(store.address)
                    .padding(0)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .font(Font.custom("SFProText-Regular", size: 13))
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.clear)
            }
            Spacer(minLength: 20)
        }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
    }
}

struct StoreListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreListView()
    }
}

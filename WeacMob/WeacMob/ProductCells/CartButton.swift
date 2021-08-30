//
//  CartButton.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct CartButton: View {
    var body: some View {
        GeometryReader { metrics in
            HStack {
                Text("ADD")
                    .font(Font.custom("SFProText-SemiBold", size: 16))
                    .foregroundColor(Color.white)
                    .frame(width: metrics.size.width - 46, height: 31, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.init(hex: "#199b3b"))
                    .cornerRadius(4)
                Spacer()
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}

//
//  TabbText.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct TabbText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(Font.custom("SFProText-Regular", size: 10))
            .foregroundColor(Color.red)
    }
}

struct TabbText_Previews: PreviewProvider {
    static var previews: some View {
        TabbText(text: "Example")
    }
}

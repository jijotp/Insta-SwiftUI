//
//  LikeButton.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct LikeButton : View {
    @State var isPressed = false
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
                .animation(.linear)
            Image(systemName: "heart")
        }.font(.system(size: 40))
            .onTapGesture {
                self.isPressed.toggle()
        }
        .foregroundColor(isPressed ? .red : .white)
    }
}
struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
    }
}

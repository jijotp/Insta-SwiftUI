//
//  MessageButtonView.swift
//  WeacMob
//
//  Created by Jijo on 01/09/21.
//

import SwiftUI

struct MessageButtonView: View {
    @State var selection: Int? = nil
    @State private var isPresented = false
    var body: some View {
        HStack {
          //  NavigationLink(destination: MapView(), tag: 1, selection: $selection) {
                Button(action: {
                    print("login tapped")
                    self.selection = 1
                    isPresented.toggle()
                }) {
                    Image.init("ic-BadgeLocation")
                        .resizable()
                        .frame(width: 18, height: 22)
                        .scaledToFit()
                }
                .accentColor(Color.clear)
                .padding()
                .background(Color(UIColor.clear))
                .cornerRadius(4.0)
                .padding(Edge.Set.vertical, 0)
                .fullScreenCover(isPresented: $isPresented, content: MapView.init)
          //  }
        }
    }
}

struct MessageButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MessageButtonView()
    }
}

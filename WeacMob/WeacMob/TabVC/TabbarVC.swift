//
//  TabbarVC.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct TabbarVC: View {
    @State private var selectedView = 0
    
    var body: some View {
        TabView(selection: $selectedView) {
           HomeVC()
        // GameView(game: Game(name: "Zelda: Breath of the Wild", developer: "Nintendo EPD", cover: Image("Mask Group 26"), progress: 0.75))
           // Checkmark()
            .tabItem {
                Image.init("home")
                TabbText(text: "Home")
            }.tag(0)
            
            
            MapView()
            .tabItem {
                Image.init("map")
                TabbText(text: "Map")
            }.tag(1)
            
            SignUpVC()
            .tabItem {
                Image.init("group")
                TabbText(text: "SignUp")
            }.tag(2)
            
            ProductsView()
            .tabItem {
                Image.init("percent")
                TabbText(text: "Products")
            }.tag(3)
            
            Members()
            .tabItem {
                Image.init("newspaper")
                TabbText(text: "Oservable")
            }.tag(4)
        }
        .accentColor(Color.gray)
    }
    
}

struct TabbarVC_Previews: PreviewProvider {
    static var previews: some View {
        TabbarVC()
    }
}

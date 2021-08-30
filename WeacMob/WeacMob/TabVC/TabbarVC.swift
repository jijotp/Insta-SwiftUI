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
            .tabItem {
                Image.init("home")
                TabbText(text: "Home")
            }.tag(0)
            
            
            ProductsView()
            .tabItem {
                Image.init("map")
                TabbText(text: "Map")
            }.tag(1)
            
            SampleView()
            .tabItem {
                Image.init("group")
                TabbText(text: "Loyalty")
            }.tag(2)
            
            SecondVC()
            .tabItem {
                Image.init("percent")
                TabbText(text: "Offers")
            }.tag(3)
            
            SampleView()
            .tabItem {
                Image.init("newspaper")
                TabbText(text: "Events")
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

//
//  TabbarVC.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct TabbarVC: View {
    @State private var selectedView = 0
    
    @EnvironmentObject var stores: StoreDetails
    
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
            
            SignUpVC()
            .tabItem {
                Image.init("group")
                TabbText(text: "SignUp")
            }.tag(2)
            
            SecondVC()
            .tabItem {
                Image.init("percent")
                TabbText(text: "Offers")
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

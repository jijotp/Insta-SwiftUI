//
//  SecondVC.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct SecondVC: View {
    
    @State private var active: Bool = false
    
    @State private var showDetailView = false
    
    
    var model = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if self.active {
                    OfferItemsCell(offers: model.offersModel)
                    SearchView()
                    StoresView()
                } else {
                    HStack {
                        LoadingView(isShowing: .constant(!self.active))
                    }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Image.init("WACMOB")
                }
            }
            .listStyle(PlainListStyle())
            .preferredColorScheme(.light)
            
        }.onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
            self.getHomeData()
        })
    }
    
    func getHomeData() {
        model.getMockdata(handler: { item in
            if item {
                self.active = true
            }
        })
    }
}

struct SecondVC_Previews: PreviewProvider {
    static var previews: some View {
        SecondVC()
    }
}

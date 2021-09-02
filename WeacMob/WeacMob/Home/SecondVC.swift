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
        }.onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
            self.getHomeData()
        })
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(false)
        .listStyle(PlainListStyle())
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

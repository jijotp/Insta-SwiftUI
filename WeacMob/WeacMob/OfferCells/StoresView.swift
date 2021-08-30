//
//  StoresView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct StoresView: View {
    
    var model = StoreViewModel()
    @State private var active: Bool = false
    
    var body: some View {
        VStack (alignment: .leading){
            Spacer(minLength: 22)
            if self.active {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        ForEach(model.stores, id: \.self) { item in
                            StoreListView(store: item)
                        }
                        .padding(0)
                    }
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }.onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
            self.getHomeData()
        })
    }
    
    func getHomeData() {
        model.setUpdata()
        self.active = true
    }
}

struct StoresView_Previews: PreviewProvider {
    static var previews: some View {
        StoresView()
    }
}

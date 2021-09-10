//
//  SwiftGridView.swift
//  WeacMob
//
//  Created by Jijo on 03/09/21.
//

import SwiftUI

struct SwiftGridView: View {
    
    var model = HomeViewModel()
    
    @State private var active: Bool = false
    
    private var columns: [GridItem] = [
        GridItem(.fixed(UIScreen.main.bounds.width / 2), spacing: 0),
        GridItem(.fixed(UIScreen.main.bounds.width / 2), spacing: 0),
    ]
    
    var body: some View {
        VStack {
            if self.active {
                ScrollView {
                    LazyVGrid(
                        columns: columns,
                        alignment: .leading,
                        spacing: 0) {
                        ForEach(model.productModel, id: \.self) { item in
                            GridProductsView(values: item)
                        }
                    }
                }
            } else {
                HStack {
                    LoadingView(isShowing: .constant(!self.active))
                }
            }
        }
        .onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
            self.getHomeData()
        })
    }
    
    func getHomeData() {
        model.getProductdata(handler: { item in
            if item {
                self.active = true
            }
        })
    }
}

struct SwiftGridView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftGridView()
    }
}

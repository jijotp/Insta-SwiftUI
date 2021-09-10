//
//  ProductView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductsView: View {
    
    var model = HomeViewModel()
    
    @State private var active: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if self.active {
                    VStack (alignment: .leading) {
                        SearchItemView()
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack() {
                                ForEach(model.homeData, id: \.self) { item in
                                    if item.type == "banners" {
                                        BannerList(homeData: item)
                                    }
                                        
                                    if item.type == "category" {
                                        StoryList(homeData: item)
                                    }
                                        
                                    if item.type == "products" {
                                        ProductListView(homeData: item)
                                    }
                                }
                                 
                            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                } else {
                    HStack {
                        LoadingView(isShowing: .constant(!self.active))
                    }
                }
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Image.init("WACMOB")
                }
            }
            .listStyle(PlainListStyle())
            .preferredColorScheme(.light)
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

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}

//
//  HomeVC.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct HomeVC: View {
    
    @State private var active: Bool = false
    
    var model = HomeViewModel()
    
    @State private var showDetailView = false
    
    init() {
        if #available(iOS 14.0, *) {
            // iOS 14 doesn't have extra separators below the list by default.
        } else {
            // To remove only extra separators below the list:
            UITableView.appearance().tableFooterView = UIView()
        }

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if self.active {
                    List {
                        TitleImageView()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .onTapGesture {
                                self.showDetailView = true
                            }
                        OfferCell(offers: model.offersModel)
                            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        Promotioncell(promotions: model.promotionalModel)
                            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    .background(Color.white)
//                    NavigationLink(destination:  SecondVC(), isActive: self.$showDetailView) {
//                        EmptyView()
//                    }
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

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}

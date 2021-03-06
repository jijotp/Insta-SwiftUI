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
                    ScrollView(.vertical, showsIndicators: false)  {

                        LazyVStack() {
                            ForEach((1...4), id: \.self) {
                                switch $0 {
                                case 1:
                                    TitleImageView()
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                        .onTapGesture {
                                            self.showDetailView = true
                                        }
                                case 2:
                                    OfferCell(offers: model.offersModel)
                                case 4:
                                    Promotioncell(promotions: model.promotionalModel)
                                default:
                                    Divider().padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                                }
                                
                            }
                        }
                        
                    }
                    .background(Color.white)
                    NavigationLink(destination:  SecondVC(), isActive: self.$showDetailView) {
                        EmptyView()
                    }
                } else {
                    HStack {
                        LoadingView(isShowing: .constant(!self.active))
                    }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(trailing: MessageButtonView())
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
            customeFOnts () 
        })
        
    }
    
    func getHomeData() {
        model.getMockdata(handler: { item in
            if item {
                self.active = true
            }
        })
    }
    func customeFOnts () {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
    
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}

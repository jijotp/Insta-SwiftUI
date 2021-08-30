//
//  ProductCartView.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct ProductCartView: View {
    
    @State var isAddButtonShows = false
    @State var countChanged = false
    @State var count = 1
    
    var body: some View {
        GeometryReader { metrics in
            if isAddButtonShows {
                HStack{
                    Spacer()
                    VStack {
                        Button(action: {
                            isAddButtonShows = false
                        }) {
                            Text("ADD")
                                .font(Font.custom("SFProText-SemiBold", size: 16))
                                .foregroundColor(Color.white)
                        }
                    }.frame(width: metrics.size.width - 46, height: 31, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.init(hex: "#199b3b"))
                    .cornerRadius(4)
                    Spacer()
                }
            } else {
                HStack{
                    Spacer()
                    HStack {
                        HStack() {
                            Spacer()
                            Button( action: {
                                print("tapped")
                               
                                self.count = count - 1
                                self.countChanged = true
                                if count == 0 {
                                    isAddButtonShows = true
                                }
                            },
                            label: {
                                Image.init("ic-minusButton")
                            })
                            Spacer()
                        }.frame(width: (metrics.size.width - 46) / 3, height: 31, alignment: .leading)
                        
                        Text(String(count))
                            .font(Font.custom("SFProText-SemiBold", size: 16))
                            .foregroundColor(Color.black)
                            .frame(width: (metrics.size.width - 46) / 3,height: 31, alignment: .center)
                            .background(Color.white)
                        
                        HStack() {
                            Spacer()
                            Button( action: {
                                self.count = count + 1
                                self.countChanged = true
                            },
                            label: {
                                Image.init("icplusButton")
                            })
                            Spacer()
                        }.frame(width: (metrics.size.width - 46) / 3, height: 31, alignment: .leading)
                        
                    }.frame(width: metrics.size.width - 46, height: 31, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .background(Color.init(hex: "#199b3b"))
                    .cornerRadius(4)
                    Spacer()
                }
            }
        }
    }
}

struct ProductCartView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartView()
    }
}

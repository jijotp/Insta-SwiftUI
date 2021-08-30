//
//  AddButton.swift
//  WeacMob
//
//  Created by Jijo on 30/08/21.
//

import SwiftUI

struct AddButton: View {
    
    @State var isAddButtonShows = true
    @State var countChanged = false
    @State var count = 1
    
    var body: some View {
        GeometryReader { metrics in
            if isAddButtonShows {
                VStack(alignment: .center) {
                    Text("ADD")
                        .font(Font.custom("SFProText-SemiBold", size: 16))
                        .foregroundColor(Color.white)
                        .frame(width: metrics.size.width * 0.70, height: 31, alignment: .center)
                        .padding(0)
                        .cornerRadius(4)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 4 ,
                                style: .continuous
                            )
                            .fill(Color.init(hex: "#199b3b"))
                        )
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 12, trailing: 0))
                .cornerRadius(4)
                .onTapGesture {
                    self.isAddButtonShows = false
                    self.count = 1
                }
                
            } else {
                VStack(alignment: .center) {
                    HStack {
                        VStack{
                            Text("-")
                                .font(Font.custom("SFProText-SemiBold", size: 30))
                                .foregroundColor(Color.white)
                            
                        }.frame(width: (metrics.size.width * 0.70) / 3, height: 31, alignment: .center)
                        .background(Color.init(hex: "#199b3b"))
                        .onTapGesture {
                            print("tapped")
                            self.count = count - 1
                            if count <= 0 {
                                self.isAddButtonShows = true
                                self.count = 0
                            }
                        }
                        .background(
                            RoundedRectangle(
                                cornerRadius: 4 ,
                                style: .continuous
                            )
                            .fill(Color.init(hex: "#199b3b"))
                        )
                        
                        VStack{
                            let count = String(self.count)
                            Text(count)
                                .font(Font.custom("SFProText-SemiBold", size: 16))
                                .foregroundColor(Color.black)
                                .cornerRadius(4)
                        }.frame(width: (metrics.size.width * 0.70) / 3, height: 31, alignment: .center)
                        .background(Color.white)
                        VStack{
                            Text("+")
                                .font(Font.custom("SFProText-SemiBold", size: 20))
                                .foregroundColor(Color.white)
                        }.frame(width: (metrics.size.width * 0.70) / 3, height: 31, alignment: .center)
                        .background(Color.init(hex: "#199b3b"))
                        .onTapGesture {
                            print("tapped")
                            self.count = count + 1
                            if count <= 0 {
                                self.isAddButtonShows = true
                                self.count = 0
                            }
                        }
                    }
                    .padding(0)
                    .cornerRadius(4)
                }
                .frame(width: metrics.size.width * 0.70, height: 31, alignment: .center)
                //.background(Color.init(hex: "#199b3b"))
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 12, trailing: 0))
                .cornerRadius(4)
                .onTapGesture {
                    self.isAddButtonShows = false
                }
                
            }
        }
    }
}
struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}

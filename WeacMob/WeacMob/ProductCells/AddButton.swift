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
        if isAddButtonShows {
            AddTextView()
                .background(
                    RoundedRectangle(
                        cornerRadius: 4 ,
                        style: .continuous
                    )
                    .fill(Color.init(hex: "#199b3b"))
                )
                .onTapGesture {
                    self.isAddButtonShows = false
                    self.count = 1
                }
        } else {
            HStack(alignment: .center, spacing: 0){
                Text("-")
                    .font(Font.custom("SFProText-SemiBold", size: 30))
                    .foregroundColor(Color.white)
                    .frame(width: 31 ,height: 31, alignment: .center)
                    .background(Color.init(hex: "#199b3b"))
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
                }.frame(width: 50, height: 31, alignment: .center)
                .cornerRadius(4)
                .background(Color.white)
                .border(Color.init(hex: "#cbcfd5"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Text("+")
                    .font(Font.custom("SFProText-SemiBold", size: 30))
                    .foregroundColor(Color.white)
                    .frame(width: 31 ,height: 31, alignment: .center)
                    .background(Color.init(hex: "#199b3b"))
                    .background(Color.init(hex: "#199b3b"))
                    .onTapGesture {
                        print("tapped")
                        self.count = count + 1
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
            }.cornerRadius(4)
        }
        
        //                        GeometryReader { metrics in
        //                            AddTextView()
        //                                HStack (alignment: .center){
        //                                    Text("Jijo")
        //                                }
        //                                .frame(height: 31)
        //                                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
        //                                .background(Color.black)
        //                            .frame(width: metrics.size.width * 0.70, height: 31, alignment: .center)
        //                            .cornerRadius(4)
        //                            .onTapGesture {
        //                                self.isAddButtonShows = false
        //                            }
        //                        }
    }
}
struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}

//
//  TextFeildSwift.swift
//  WeacMob
//
//  Created by Jijo on 02/09/21.
//

import SwiftUI

struct TextFeildSwift: View {
    @State var text = ""
    var placeHolder = "Search"
    
    @State private var isEditing = false
    
    var body: some View {
        
        let baordeColor: Color = isEditing ?  Color.init("BandGreen") : Color.init(hex: "#E5E5E5")
        
        let backGroundColor: Color = isEditing ?  Color.white : Color.init(hex: "f2f2f2")
        
        return ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color(hex: "#FAFAFA5"))
            HStack {
                
                TextField(placeHolder, text: $text) { startedEditing in
                    if startedEditing {
                        print(startedEditing)
                        isEditing = true
                    } else {
                        isEditing = false
                    }
                } onCommit: {
                    print("onCommit")
                    isEditing = false
                }
                
                .padding(.leading,8)
                .padding(.trailing,8)
                .font(Font.custom("SFProDisplay-Regular", size: 16))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color.init(hex: "#727272"))
                .font(Font.custom("SFProText-Medium", size: 16))
            }
            .foregroundColor(Color.init(hex: "#FAFAFA"))
            .padding(0)
            
        }
        .padding(0)
        .frame(height: 47)
        .border(baordeColor, width: 1)
        .cornerRadius(4)
        .overlay(RoundedRectangle(cornerRadius: 4).stroke(baordeColor, lineWidth: 1))
        .background(backGroundColor)
    }
}

struct TextFeildSwift_Previews: PreviewProvider {
    static var previews: some View {
        TextFeildSwift()
    }
}

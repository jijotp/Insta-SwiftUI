//
//  AddTextView.swift
//  WeacMob
//
//  Created by Jijo on 10/09/21.
//

import SwiftUI

struct AddTextView: View {
    
    
    @State var isAddButtonShows = true
    @State var countChanged = false
    @State var count = 1
    
    
    var body: some View {
        
        Text("ADD")
            .font(Font.custom("SFProDisplay-Bold", size: 16))
            .foregroundColor(Color.white)
            .frame(width: 112, height: 31)
    }
}
struct AddTextView_Previews: PreviewProvider {
    static var previews: some View {
        AddTextView()
    }
}

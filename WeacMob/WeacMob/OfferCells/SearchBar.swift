//
//  searchBar.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText = ""
    @Binding var searching: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color(hex: "#FAFAFA5"))
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 8)
                    .foregroundColor(Color.init(hex: "#727272"))
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
                .foregroundColor(Color.init(hex: "#727272"))
                .font(Font.custom("SFProText-Medium", size: 16))
            }
            .foregroundColor(Color.init(hex: "#FAFAFA"))
            .padding(0)
            
        }
        .frame(height: 47)
        .padding(0)
        .border(Color.init(hex: "#E5E5E5"), width: 1)
        .cornerRadius(4)
        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.init(hex: "#E5E5E5"), lineWidth: 1))
    }
}

struct InputAccessory: UIViewRepresentable  {

    func makeUIView(context: Context) -> UITextField {

        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 44))
        customView.backgroundColor = UIColor.red
        let sampleTextField =  UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        sampleTextField.inputAccessoryView = customView
        sampleTextField.placeholder = "placeholder"

        return sampleTextField
    }
    func updateUIView(_ uiView: UITextField, context: Context) {
    }
}

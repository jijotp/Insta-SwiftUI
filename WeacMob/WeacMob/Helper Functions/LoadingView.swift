//
//  LoadingView.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import SwiftUI

struct LoadingView: View {
    
    @Binding var isShowing: Bool
    var tintColor: Color = .blue
    var scaleSize: CGFloat = 1.0
    
    var body: some View {
        GeometryReader { geometry in
            ProgressView()
                .scaleEffect(scaleSize, anchor: .center)
                .progressViewStyle(CircularProgressViewStyle(tint: tintColor))
                .frame(width: geometry.size.width,
                       height: geometry.size.height)
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .opacity(self.isShowing ? 1 : 0)
            
        }
    }
}


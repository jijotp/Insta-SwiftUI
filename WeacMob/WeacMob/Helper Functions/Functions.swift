//
//  Functions.swift
//  SampleUI
//
//  Created by Jijo on 22/08/21.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    
    @Published var loggedIn : Bool = false
}

class UserOnboard: ObservableObject {
    
    @Published var onboardComplete : Bool = false
}

struct StartOnboardView: View {
    
    @EnvironmentObject var userOnboard: UserOnboard
    
    var body: some View {
        
        let contentView = StartView()
        let settings = UserSettings()
                
        if userOnboard.onboardComplete {
            return AnyView(contentView.environmentObject(settings))
        } else {
            if UserDefaults.standard.bool(forKey: "Loggedin") {
                settings.loggedIn = true
                return AnyView(TabbarVC())
            } else {
                settings.loggedIn = false
                return AnyView(TabbarVC())
            }
        }
    }
}

struct StartView: View {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
                
        if settings.loggedIn {
            return AnyView(TabbarVC())
        } else {
            return AnyView(TabbarVC())
        }
    }
}

struct ExtendedDivider: View {
    var height: CGFloat = 5
    var width: CGFloat = 100
    var direction: Axis.Set = .horizontal
    var fillColor: Color = .blue
    var body: some View {
        ZStack {
            Rectangle()
                .fill(fillColor)
                .applyIf(direction == .vertical) {
                    $0.frame(width: width,height: height)
                    .edgesIgnoringSafeArea(.vertical)
                } else: {
                    $0.frame(width: width,height: height)
                    .edgesIgnoringSafeArea(.horizontal)
                }
        }
    }
}

struct buttonWithBackground: View {
    
    var btnText: String
    
    var height: CGFloat = 50
    var width: CGFloat = 140
    var fillColor: Color = .blue
    
    var body: some View {
        
        HStack {
//            Spacer()
            Text(btnText)
                .font(Font.custom("SFProDisplay-Bold", size: 18))
                .foregroundColor(.white)
                .padding(0)
                .frame(width: width, height: height)
                .background(fillColor)
                .clipped()
                .cornerRadius(5.0)
                .shadow(color: fillColor, radius: 5, x: 0, y: 5)
            
//            Spacer()
        }
    }
}

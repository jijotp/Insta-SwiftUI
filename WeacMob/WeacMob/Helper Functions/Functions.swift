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

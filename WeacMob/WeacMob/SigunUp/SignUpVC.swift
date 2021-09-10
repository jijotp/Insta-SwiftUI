//
//  SignUpVC.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import SwiftUI

struct SignUpVC: View {
    
    @ObservedObject private var userViewModel = SignUpViewModel()
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false)  {
                VStack(spacing: 8) {
                    TextFeildSwift(placeHolder: "Name")
                    TextFeildSwift(placeHolder: "Email")
                    TextFeildSwift(placeHolder: "Password")
                    TextFeildSwift(placeHolder: "Name")
                    TextFeildSwift(placeHolder: "Email")
                    TextFeildSwift(placeHolder: "Password")
                    
                }
            }.padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            .navigationBarTitle("Signup", displayMode: .large)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SignUpVC_Previews: PreviewProvider {
    static var previews: some View {
        SignUpVC()
    }
}

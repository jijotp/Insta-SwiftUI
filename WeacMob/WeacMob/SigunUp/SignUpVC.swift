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
        
        Form {
            
            Section(footer: Text(userViewModel.usernameMessage).foregroundColor(.red)) {
                TextField("Username", text: $userViewModel.userName)
                    .autocapitalization(.none)
            }
            
            Section(footer: Text(userViewModel.passwordMessage).foregroundColor(.red)) {
                
                SecureField("Password", text: $userViewModel.password)
                SecureField("Confirm Password", text: $userViewModel.confirmPassword)
            }
            
            Section {
                
                Button(action: {
                  
                }) {
                    Text("Sign up")
                }
                .disabled(!userViewModel.isValid)
            }
        }
    }
}

struct SignUpVC_Previews: PreviewProvider {
    static var previews: some View {
        SignUpVC()
    }
}

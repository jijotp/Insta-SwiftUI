//
//  SignUpViewModel.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import Foundation
class SignUpViewModel: ObservableObject {
    
    // Input
    @Published var userName = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    // Output
    @Published var isValid = false
    @Published var usernameMessage = ""
    @Published var passwordMessage = ""

}

//
//  SignInWithAppleButton.swift
//  Firebase ToDo
//
//  Created by Miguel Planckensteiner on 20.05.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
    }
    
    
}

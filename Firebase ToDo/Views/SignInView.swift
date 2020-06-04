//
//  SignInView.swift
//  Firebase ToDo
//
//  Created by Miguel Planckensteiner on 20.05.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var coordinator: SignInWithAppleCoordinator?
    
    var body: some View {
        VStack {
            Text("Welcome to TODO Firebase!!")
            SignInWithAppleButton()
                .frame(width: 200, height: 45)
                .onTapGesture {
                    self.coordinator = SignInWithAppleCoordinator()
                    if let coordinator = self.coordinator {
                        coordinator.startSignInWithAppleFlow {
                            print("You succesfully signed in")
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

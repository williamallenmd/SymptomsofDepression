//
//  SingleAppView.swift
//  DepressionSchool2
//
//  Created by William Allen on 6/13/21.
//  Change GITHUB name to Depression School 2...

import SwiftUI
import LocalAuthentication

struct SingleAppView: View {
  @Binding var onBoardingState: Int
  @State private var isUnlocked = true
  var body: some View {
    VStack {
      if self.isUnlocked {
        NavigationView {
          PrimaryMatrixView()
            .navigationTitle("Depression School")
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea(edges: .bottom)
        }
          
//        Button("Restart on-boarding") { withAnimation(.easeOut(duration: 0.5)) {
//            onBoardingState = 1
//        }
//        }.buttonStyle(MyCapsuleButtonStyle())
          
      } else {
        Text("Locked")
      }
    }
  //  .onAppear(perform: authenticate)
    .padding()
  }
    
    
  func authenticate() {
    let context = LAContext()
    var error: NSError?
    // check whether biometric authentication is possible
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
      // it's possible, so go ahead and use it
      let reason = "We need to unlock your data."
      context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                             localizedReason: reason) { success, authenticationError in
        // authentication has now completed
        DispatchQueue.main.async {
          if success {
            self.isUnlocked = true
          } else {
            // there was a problem
          }
        }
      }
    } else {
      // no biometrics
    }
  }
}

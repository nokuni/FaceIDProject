//
//  FaceIDAuthentication.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import Foundation
import LocalAuthentication

class FaceIDAuthentication: ObservableObject {
    
    @Published var isUnlocked = false
    
    private let context = LAContext()
    private var error: NSError?
    
    // Check whether biometric authentication is possible
    var isBiometricAuthenticationPossible: Bool {
        context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
    }
    
    // Unlock if the authentication is a success
    func unlock() {
        DispatchQueue.main.async {
            self.isUnlocked = true
        }
    }
    
    // Launch the authentication
    func launchAuthentication(reason: String) async throws {
        do {
            try await context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason)
            unlock()
        } catch {
            throw FaceIDAuthenticationError.fail
        }
    }
    
    // Try to authenticate
    func authenticate(reason: String) {
        DispatchQueue.main.async {
            Task {
                if self.isBiometricAuthenticationPossible {
                    try await self.launchAuthentication(reason: reason)
                } else {
                    // no biometrics
                }
            }
        }
    }
    
}

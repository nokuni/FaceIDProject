//
//  AuthenticationView.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import SwiftUI

struct AuthenticationView: View {
    @StateObject var faceIDAuth = FaceIDAuthentication()
    var body: some View {
        VStack(spacing: 87) {
            Spacer()
            Text(faceIDAuth.isUnlocked ? "Application unlocked" : "Application locked")
                .fontWeight(.bold)
                .font(.custom("Inter", size: 32))
                .frame(width: 238, height: 78)
                .multilineTextAlignment(.center)
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 135, height: 135)
                .foregroundStyle(faceIDAuth.isUnlocked ? .green : .red)
                .overlay(
                    Image(faceIDAuth.isUnlocked ? "chestOpen" : "chestClose")
                )
            FaceIDAuthenticateButton(faceIDAuth: faceIDAuth)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AuthenticationView()
}

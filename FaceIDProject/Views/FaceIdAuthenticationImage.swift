//
//  FaceIdAuthenticationImage.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import SwiftUI

struct FaceIdAuthenticationImage: View {
    @ObservedObject var faceIDAuth: FaceIDAuthentication
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .frame(width: 135, height: 135)
            .foregroundStyle(faceIDAuth.isUnlocked ? .green : .red)
            .overlay(
                Image(faceIDAuth.isUnlocked ? "chestOpen" : "chestClose")
            )
    }
}

#Preview {
    FaceIdAuthenticationImage(faceIDAuth: FaceIDAuthentication())
}

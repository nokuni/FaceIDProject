//
//  FaceIDAuthenticateButton.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import SwiftUI

struct FaceIDAuthenticateButton: View {
    @ObservedObject var faceIDAuth: FaceIDAuthentication
    var body: some View {
        Button {
            faceIDAuth.authenticate(reason: "To unlock data.")
        } label: {
            Text(faceIDAuth.isUnlocked ? "Lock" : "Open")
                .fontWeight(.bold)
                .font(.custom("Inter", size: 32))
                .foregroundStyle(.white)
                .padding()
                .background(
                    faceIDAuth.isUnlocked ?
                    Color.red.clipShape(RoundedRectangle(cornerRadius: 15)) :
                    Color.blue.clipShape(RoundedRectangle(cornerRadius: 15))
                )
        }
    }
}

#Preview {
    FaceIDAuthenticateButton(faceIDAuth: FaceIDAuthentication())
}

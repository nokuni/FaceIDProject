//
//  FaceIdAuthenticationView.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import SwiftUI

struct FaceIdAuthenticationView: View {
    @StateObject var faceIDAuth = FaceIDAuthentication()
    var body: some View {
        VStack(spacing: 87) {
            Spacer()
            FaceIdAuthenticationTitle(faceIDAuth: faceIDAuth)
            FaceIdAuthenticationImage(faceIDAuth: faceIDAuth)
            FaceIDAuthenticateButton(faceIDAuth: faceIDAuth)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FaceIdAuthenticationView()
}

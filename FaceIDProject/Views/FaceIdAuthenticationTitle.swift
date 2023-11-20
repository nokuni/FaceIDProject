//
//  FaceIdAuthenticationTitle.swift
//  FaceIDProject
//
//  Created by Yann Christophe Maertens on 20/11/2023.
//

import SwiftUI

struct FaceIdAuthenticationTitle: View {
    @ObservedObject var faceIDAuth: FaceIDAuthentication
    var body: some View {
        Text(faceIDAuth.isUnlocked ? "Application unlocked" : "Application locked")
            .fontWeight(.bold)
            .font(.custom("Inter", size: 32))
            .frame(width: 238, height: 78)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    FaceIdAuthenticationView(faceIDAuth: FaceIDAuthentication())
}

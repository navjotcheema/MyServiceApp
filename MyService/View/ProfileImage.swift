//
//  ProfileImage.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-01.
//

import SwiftUI

struct ProfileImage: View {
    var imageName: String?
    var size :CGFloat = 100
    var body: some View {
        Image(imageName ?? "profile")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: size ,height: size)
            .overlay{
                Circle().stroke(Color.gray,lineWidth: 0.9)
            }
           
    }
}

#Preview {
    ProfileImage()
}

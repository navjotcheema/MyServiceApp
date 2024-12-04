//
//  CustomAlertView.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-01.
//

import SwiftUI

struct CustomAlertView: View {
    var title: String
    var message: String
    var dismissButtonText: String = "OK"
    var onDismiss: (() -> Void)? = nil
    
    var body: some View {
        VStack(spacing: 16) {
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text(message)
                .font(.body)
                .multilineTextAlignment(.center)
            
            Button(action: {
                onDismiss?()
            }) {
                Text(dismissButtonText)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors:[.black,.gray]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 10)
        .padding(.horizontal, 40)
        .transition(.opacity)
    }
}

#Preview {
    
    CustomAlertView(title: "Alert", message:"Test")
}

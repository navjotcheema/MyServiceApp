//
//  ButtonView.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-11-30.
//

import SwiftUI

struct ButtonView: View {
    @State var validationNotDone = false
    var buttonText:String
    var widthSize : CGFloat = .infinity
    var heigthSize :CGFloat =  20
    var action:()-> Void // It defines a closure function.
    var body: some View {
        Button(action:action) {
            Text(buttonText)
                .fontWeight(.heavy)
                .font(.title3)
                .frame(maxWidth: widthSize,minHeight: heigthSize)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors:[.black,.gray]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
        }
    }
}
#Preview {
    ButtonView(buttonText: "Login") {
        print("Test")
    }
 
}

//
//  InputFieldView.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-11-30.
//

import SwiftUI

struct InputFieldView: View {
    var title : String?
    var isSecure:Bool = false
    @Binding var data : String
    var body: some View {
        ZStack {
            if isSecure {
                SecureField("", text: $data)
                    .padding(.horizontal,10)
                    .frame(height: 42)
                    .overlay(RoundedRectangle(
                        cornerSize: CGSize(width:4, height: 4))
                        .stroke(Color.gray,lineWidth: 1))
            }
            else {
                TextField("", text: $data)
                    .padding(.horizontal,10)
                    .frame(height: 42)
                    .overlay(RoundedRectangle(
                        cornerSize: CGSize(width:4, height: 4))
                        .stroke(Color.gray,lineWidth: 1))
            }
          
            HStack {
                Text(title ?? "Input")
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(4)
                    .background(.white)
                Spacer()
            }
            .padding(.leading,8)
            .offset(CGSize(width: 0, height: -20))
            
        }.padding(4)
       
    }
}

#Preview {
    @Previewable @State var data :String = ""
    
    InputFieldView(title:"username", isSecure: false, data:$data)
}

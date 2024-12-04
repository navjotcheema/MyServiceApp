//
//  Signup.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-11-26.
//

import SwiftUI

struct Signup: View {
    @Environment(\.dismiss) var dismiss
 
    @ObservedObject var viewModel : SignupViewModel
    init(viewModel:SignupViewModel)
    {
        self.viewModel =  viewModel
    }
    
    var body: some View {
       
        ScrollView {
            ProfileImage(imageName:"profile",size:200)
            ButtonView(buttonText:"+ Photo",widthSize: 80)  {
              
            }
            InputFieldView(title:"Email",isSecure: false,
                           data: $viewModel.email)
            InputFieldView(title:"Password",isSecure: true,
                           data: $viewModel.password)
            InputFieldView(title:"Confrim Password",isSecure: true,
                           data: $viewModel.confirmPassword)
            InputFieldView(title:"Phone No",isSecure: false,
                           data: $viewModel.phoneNumber)

            ButtonView(buttonText:"Register") {
                viewModel.message = viewModel.checkValidations()
                if viewModel.message.isEmpty {
                    dismiss()
                }
                else
                {
                    viewModel.showAlert = true
                }
            }

        }.padding()
            .navigationTitle("Register")
            .customeAlert(isPresented: $viewModel.showAlert,
                          title:"Error",
                          message:viewModel.message)
        
    }
}

#Preview {
    Signup(viewModel: SignupViewModel())
}

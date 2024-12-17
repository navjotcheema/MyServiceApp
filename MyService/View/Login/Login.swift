//
//  Login.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-11-26.
//

import SwiftUI

struct Login: View {
    
    @ObservedObject var viewModel  : LoginViewModel
    init(viewModel:LoginViewModel)
    {
        self.viewModel = viewModel
        
    }
    var body: some View {
        ZStack {
            NavigationStack
            {
                ScrollView {
                    
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .padding(.all, 40)
                    InputFieldView(title:"Username", isSecure: false,
                                   data:$viewModel.username)
                    InputFieldView(title:"Password", isSecure: true,
                                   data:$viewModel.password)
                    HStack {
                        Spacer()
                        Text("Forgot Password ?")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .underline()
                    }.padding(.top,10)
                    
                    ButtonView(buttonText:"Login")  {
                        viewModel.sendLoginDetails()
                    }
                    
                    ButtonView(buttonText: "Register"){
                        viewModel.isNavigating = true
                    
                    }
                    
                    
                }.padding()
                    .navigationTitle("Login")
                    .navigationDestination(isPresented:
                                            $viewModel.isNavigating){
                        Signup(viewModel: SignupViewModel())
                    }
                    .customeAlert(isPresented: $viewModel.showAlert,
                                  title: viewModel.tittle,
                                  message: viewModel.message,
                                  dismissButtonText: "Alright")
                
            }
        }
    }
}


#Preview {
    
    Login(viewModel: LoginViewModel())
}

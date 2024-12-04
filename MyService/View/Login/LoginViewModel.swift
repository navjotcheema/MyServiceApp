//
//  LoginViewModel.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-01.
//
import Foundation

final class LoginViewModel :ObservableObject {
    @Published var username : String = ""
    @Published var password :String = ""
    @Published var isNavigating :Bool  = false
    @Published var message :String  = ""
    @Published var tittle :String  = ""
    @Published var showAlert :Bool = false
    
    func validateUsernameEmailAndPassword()-> String{
        tittle = "Message"
        switch (username.isEmpty,username.isValidEmail(),password.isEmpty) {
        case (true, _,_ ):
            message = "Username cannot be empty"
        case(false,false, _):
            message = "Please enter valid email address"
        case(false,true,true):
            message = "Password cannot be empty"
        default :
            message = ""
        }
        return message
    }
    
    func sendLoginDetails()
    {
        let messageAlert =  validateUsernameEmailAndPassword()
        if messageAlert.isEmpty {
            showAlert = false
        }
        else {
            showAlert = true
        }
        
    }
    
}

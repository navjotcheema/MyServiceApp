//
//  SignupViewModel.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-04.
//

import Foundation

final class SignupViewModel : ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var confirmPassword : String = ""
    @Published var phoneNumber: String  = ""
    @Published var showAlert : Bool = false
    @Published var message: String = ""
    
    func checkValidations()-> String {
        
        
        switch message {
        case email :
            message = "Email can not be empty"
        case password :
            message = "Password can not be empty"
            
        case confirmPassword :
            message = "Confirm Password can not be empty"
        case  phoneNumber :
            message = "Phone Number can not be empty"
        default :
            message = ""
            
        }
        return message
        
        
    }
}

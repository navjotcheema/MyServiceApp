//
//  EmailValidate.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-01.
//

import Foundation

extension String {
  
    //Function to validate email
    
    func isValidEmail()->Bool {
        let emailRegex :String  = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
    
}

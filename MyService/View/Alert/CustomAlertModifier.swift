//
//  CustomAlert.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-12-01.
//

import SwiftUI

struct CustomAlertModifier: ViewModifier {
    @Binding var isPrensented :Bool
    var message :String = ""
    var title :String = ""
    var dismissButtonText :String = "Ok"
    var onDismiss:(()-> Void)? = nil
    func body(content:Content)-> some View {
        ZStack {
            content
                
            if isPrensented{
                CustomAlertView(title: title,
                                message: message,
                                dismissButtonText: dismissButtonText) {
                    isPrensented = false
                    onDismiss?()
                }
            }
        }
        
    }
}

extension View {
    func customeAlert(isPresented:Binding<Bool>,title:String,message:String, dismissButtonText:String = "Ok",onDismiss:(()-> Void)? = nil)-> some View{
        self.modifier(CustomAlertModifier(isPrensented: isPresented,
                                          message: message,
                                          title:title,
                                          dismissButtonText: dismissButtonText,
                                          onDismiss: onDismiss
                                         )
        )
    }
}

//
//  ContentView.swift
//  MyService
//
//  Created by Navjot Cheema on 2024-11-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var _:LoginViewModel
        Login(viewModel: LoginViewModel())
    }
}

#Preview {
    ContentView()
}

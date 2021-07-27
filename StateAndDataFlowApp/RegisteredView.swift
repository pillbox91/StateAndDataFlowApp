//
//  RegisteredView.swift
//  StateAndDataFlowApp
//
//  Created by Андрей Аверьянов on 27.07.2021.
//

import SwiftUI

struct RegisteredView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            TextField("Enter Your Name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
}

extension RegisteredView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister = true
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
            .environmentObject(UserManager())
    }
}

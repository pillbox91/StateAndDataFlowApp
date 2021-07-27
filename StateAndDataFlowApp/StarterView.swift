//
//  StarterView.swift
//  StateAndDataFlowApp
//
//  Created by Андрей Аверьянов on 27.07.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.isRegister {
                ContentView()
            } else {
                RegisteredView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}

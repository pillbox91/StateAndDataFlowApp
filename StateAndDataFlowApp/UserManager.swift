//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Андрей Аверьянов on 27.07.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
    
    init() {}
    
    init(name: String) {
        self.name = name
    }
}

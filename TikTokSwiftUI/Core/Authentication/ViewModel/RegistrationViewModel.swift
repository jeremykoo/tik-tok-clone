//
//  RegistrationViewModel.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/18/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func createUser(withEmail email: String, password: String, username: String, fullname: String) async {
        do {
            try await authService.createUser(withEmail: email, 
                                             password: password,
                                             username: username,
                                             fullname: fullname)
        } catch {
            print("DEBUG: Did fail to log in with error \(error.localizedDescription)")
        }
    }
}

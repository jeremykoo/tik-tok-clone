//
//  ExploreViewModel.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/20/24.
//

import Foundation

@MainActor
class ExploreViewModel: ObservableObject {
    
    @Published var users = [User]()
    private let userService: UserServiceProtocol
    
    init(userService: UserServiceProtocol) {
        self.userService = userService
        Task { await fetchUsers() }
    }
    
    func fetchUsers() async {
        do {
            self.users = try await userService.fetchUsers()
        } catch {
            print("DEBUG: Failed to fetch users with error: \(error.localizedDescription)")
        }
    }
}

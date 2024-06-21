//
//  PreviewProvider.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/20/24.
//

import Foundation

struct DeveloperPreview {
    
    static var user = User(
        id: UUID().uuidString,
        username: "lewis_hamilton",
        email: "lewis@gmail.com",
        fullname: "Lewis Hamilton"
    )
    
    static var users: [User] = [
        .init(id: UUID().uuidString, username: "lewis.hamilton", email: "lewis@gmail.com", fullname: "Lewis Hamilton"),
        .init(id: UUID().uuidString, username: "max.verstappen", email: "max@gmail.com", fullname: "Max Verstappen"),
        .init(id: UUID().uuidString, username: "fernando.alonso", email: "fernando@gmail.com", fullname: "Fernando Alonso"),
        .init(id: UUID().uuidString, username: "charles.leclerc", email: "charles@gmail.com", fullname: "Charles Leclerc"),
    ]
}

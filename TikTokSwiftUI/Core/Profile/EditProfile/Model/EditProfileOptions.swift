//
//  EditProfileOptions.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/23/24.
//

import Foundation

enum EditProfileOptions: Hashable {
    case name
    case username
    case bio
    
    var title: String {
        switch self {
        case .name:
            return "Name"
        case .username:
            return "Username"
        case .bio:
            return "Bio"
        }
    }
}

//
//  UserProfileView.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/23/24.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 2) {
                
                // profile header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView()
            }
            .padding(.top)
        }
    }
}

#Preview {
    UserProfileView(user: DeveloperPreview.user)
}

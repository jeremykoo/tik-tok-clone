//
//  StandardTextFieldModifier.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/18/24.
//

import Foundation
import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}

//
//  PostGridView.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/14/24.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0 ..< 25) { post in
                Rectangle()
                    .frame(height: 160)
                    .clipped()
            }
        }
        .padding(.horizontal, 1)
    }
}

#Preview {
    PostGridView()
}

//
//  EditProfileManager.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/30/24.
//

import UIKit
import Firebase

class EditProfileManager: ObservableObject {
    private let imageUploader: ImageUploader
    
    init(imageUploader: ImageUploader) {
        self.imageUploader = imageUploader
    }
    
    func uploadProfileImage(_ uiImage: UIImage) async {
        do {
            let profileImageUrl = try await imageUploader.uploadImage(image: uiImage)
            try await updateUserProfileImageUrl(profileImageUrl)
        } catch {
            print("DEBUG: Handle image upload error here..")
        }
    }
    
    private func updateUserProfileImageUrl(_ imageUrl: String?) async throws {
        guard let imageUrl else { return }
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        try await FirestoreConstants.UsersCollection.document(currentUid).updateData([
            "profileImageUrl" : imageUrl
        ])
    }
}

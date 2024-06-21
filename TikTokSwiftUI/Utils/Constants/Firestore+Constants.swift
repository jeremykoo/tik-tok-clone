//
//  Firestore+Constants.swift
//  TikTokSwiftUI
//
//  Created by Jeremy Koo on 3/23/24.
//

import FirebaseFirestore

struct FirestoreConstants {
    static let Root = Firestore.firestore()
    
    static let UsersCollection = Root.collection("users")
}

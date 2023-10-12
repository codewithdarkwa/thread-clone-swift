//
//  ImageUploader.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation
import Firebase
import FirebaseStorage

struct ImageUploader{
    static func uploadImage(_ image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.25) else {return nil}
        let fileName = NSUUID().uuidString
        let storageRef = Storage.storage().reference(withPath: "/profile_images/\(fileName)")
        
        do{
            let _ = try await storageRef.putDataAsync(imageData)
            let url = try await storageRef.downloadURL()
            return url.absoluteString
        }catch{
            print("Failed to upload image with error \(error.localizedDescription)")
            return nil
        }
    }
}

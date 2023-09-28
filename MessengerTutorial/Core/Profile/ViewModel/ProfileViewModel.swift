//
//  ProfileViewModel.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task {
                try await loadImage()
            }
            
        }
    }
    @Published var profileImage: Image? {
        didSet {}
    }
    
    func loadImage() async throws  {
        guard let item = selectedItem else { return }
        guard let itemData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: itemData ) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}

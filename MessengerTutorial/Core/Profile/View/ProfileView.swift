//
//  ProfileView.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 80, height: 80)
                    }
                }
                ZStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Image(systemName: "camera.circle.fill")
                        .foregroundStyle(.black, Color(.systemGray4))
                        .frame(width: 16, height: 16)
                }
            }
            
            Text("Bruce")
                .font(.title2)
                .fontWeight(.semibold)
            
            List {
                Section {
                    ForEach(SettingOptionsViewModel.allCases, id: \.self) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                Section {
                    Button {
                        
                    } label: {
                        Text("Logout")
                    }
                    Button {
                        
                    } label: {
                        Text("DeleteAccount")
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//  SettingOptionsViewModel.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI

enum SettingOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkmode
    case activeStatus
    case accessibility
    case privacy
    case notification
    
    var title: String {
        switch self {
        case .darkmode: return "Dark Mode"
        case .activeStatus: return "Active Status"
        case .accessibility: return "Accesibility"
        case .privacy: return "Privacy"
        case .notification: return "Notification"
        }
    }
    var imageName: String {
        switch self {
        case .darkmode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notification: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkmode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accessibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notification: return Color(.systemPurple)
        }
    }
    
    var id: Int { return self.rawValue }
}

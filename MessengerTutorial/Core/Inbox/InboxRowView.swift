//
//  InboxRowView.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Heather LEd")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("YaYa haha")
                    .font(.subheadline)
                    .lineLimit(2)
                    .foregroundColor(.gray)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
        
                Image("chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        .frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}

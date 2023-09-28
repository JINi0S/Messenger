//
//  ChatView.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI

struct ChatView: View {
    let user: User
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    CircularProfileImageView(user: user, size: .xLarge)
                    VStack(spacing: 4) {
                        Text(user.fullname)
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("Messanger")
                            .font(.footnote)
                    }
                }
                
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                    
                }
            }
            
            Spacer()
            
            HStack {
                TextField("Message...", text: $text, axis: .vertical)
                
                Button("Send") {
                    //send
                }
                .fontWeight(.semibold)
                
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            
            .background(Color(.systemGroupedBackground))
            .clipShape(Capsule())
        }
        .padding(.horizontal)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: User.MOCK_USER)
    }
}

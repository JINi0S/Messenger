//
//  InboxView.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                List {
                    ForEach(0...10, id: \.self) { message in
                         InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height-120)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "person.circle.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, .gray)
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}

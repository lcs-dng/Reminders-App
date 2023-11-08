//
//  ListView.swift
//  Reminders App
//
//  Created by Dexter Ng on 2023-11-08.
//

import SwiftUI

struct ListView: View {
    
    let title: String
    let time: String
    
    var body: some View {
        
        HStack {
            VStack {
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            VStack {
                HStack {
                    Text(title)
                    Spacer()
                }
                .font(Font.system(size: 17))
                HStack {
                    Text(time)
                    Spacer()
                }
                .foregroundColor(.gray)
                .font(Font.system(size: 15))
            }
        }

    }
}

#Preview {
    ListView(
        title: "Call auto body shop",
        time: "2023-11-16"
    )
}

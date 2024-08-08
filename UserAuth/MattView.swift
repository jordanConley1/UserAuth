//
//  MattView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/24/24.
//

import SwiftUI

struct MattView: View {
    var body: some View {
        Text("Matthew Cartwright")
            .font(.largeTitle)
            .foregroundColor(.black)
        Image("Matt")
            .resizable()
            .frame(width:300, height:300)
            .imageScale(.large)
        Spacer()
        Text("During his first month in office he co-sponsored four bills involving gun control. He opposes gun-makers' legal immunity after a crime has occurred, and he opposes assault rifle sales.")
            .font(.largeTitle)
            .foregroundColor(.black)
            .cornerRadius(20)
            .font(.largeTitle)
    }
}

#Preview {
    MattView()
}

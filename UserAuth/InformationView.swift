//
//  InformationView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/22/24.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        Text("How to stop gun violence!")
            .font(.largeTitle)
            .foregroundColor(.black)
        Spacer()
        Image("Stop")
            .resizable()
            .frame(width:300, height:300)
            .imageScale(.large)
        Spacer()
        Text("To effectively combat gun violence, it is essential to establish sensible gun laws that limit access to dangerous weapons.")
            .font(.largeTitle)
            .foregroundColor(.black)
            .cornerRadius(20)
        Spacer()
    }
    
}

#Preview {
    InformationView()
}

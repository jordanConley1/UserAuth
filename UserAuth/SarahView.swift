//
//  SarahView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/24/24.
//

import SwiftUI

struct SarahView: View {
    var body: some View {
        Text("Sarah Chadwick")
            .font(.largeTitle)
            .foregroundColor(.black)
        Image("Sarah")
            .resizable()
            .frame(width:300, height:300)
            .imageScale(.large)
        Spacer()
        Text("Sarah Chadwick is a gun violence activist that who was in the Marjory Stoneman Douglas High School shooting, she is now a member of the Never Again MSD activist movement stating on a interview that never again should a child be afraid to go to school.")
            .font(.largeTitle)
            .foregroundColor(.black)
            .cornerRadius(20)
            .font(.largeTitle)
        Spacer()
    }
}

#Preview {
    SarahView()
}

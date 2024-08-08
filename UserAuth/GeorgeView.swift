//
//  GeorgeView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/23/24.
//
import SwiftUI

struct ActivistView: View {
    var body: some View {
        Text("George Clooney")
            .font(.largeTitle)
            .foregroundColor(.black)
        Image("George")
            .resizable()
            .frame(width:300, height:300)
            .imageScale(.large)
        Spacer()
        Text("In 2018, following the Stoneman Douglas High School shooting, the Clooneys pledged $500,000 to the March for Our Lives and said they would be in attendance.")
            .font(.largeTitle)
            .foregroundColor(.black)
            .cornerRadius(20)
            .font(.largeTitle)
        
    }
}

#Preview {
    ActivistView()
}

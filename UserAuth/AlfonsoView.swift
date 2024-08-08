//
//  AlfonsoView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/24/24.
//

import SwiftUI

struct AlfonsoView: View {
    var body: some View {
        Text("Alfonso Calderón Atienza")
            .font(.largeTitle)
            .foregroundColor(.black)
        Image("Alfonso")
            .resizable()
            .frame(width:300, height:300)
            .imageScale(.large)
        Spacer()
        Text("Alfonso Calderón Atienza is a Spanish-American student activist against gun violence. He is a survivor of the Stoneman Douglas High School shooting and a founding member of the Never Again MSD movement.")
            .font(.largeTitle)
            .foregroundColor(.black)
            .cornerRadius(20)
    }
}

#Preview {
    AlfonsoView()
}

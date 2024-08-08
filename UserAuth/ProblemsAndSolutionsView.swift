//
//  ProblemsAndSolutionsView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/30/24.
//

import SwiftUI

struct ProblemsAndSolutionsView: View {
    var body: some View {
        Text("Problems And Solutions")
            .fontWeight(.bold)
            .foregroundColor(.black)
            .font(.largeTitle)
        Spacer()
        Text("Gun violence is a multifaceted issue deeply rooted in various social, economic, and legal factors.")
            .fontWeight(.bold)
            .foregroundColor(.black)
        Text("The ease of access to firearms is directly correlated with higher rates of homicide and suicide. Higher gun availability increases the risk of both intentional and unintentional shootings")
            .fontWeight(.bold)
            .foregroundColor(.black)
        Text("Multiple solutions can address these problems effectively, aiming to reduce gun violence through a combination of legal, educational, and community-based interventions.")
            .fontWeight(.bold)
            .foregroundColor(.black)
        Image("ProblemsSolutions")
            .resizable()
            .frame(width:350, height:350)
            .imageScale(.large)
        Spacer()
    }
}

#Preview {
    ProblemsAndSolutionsView()
}

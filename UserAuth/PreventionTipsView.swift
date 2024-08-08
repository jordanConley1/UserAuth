//
//  PreventionTipsView.swift
//  UserAuth
//
//  Created by Jordan Conley on 8/5/24.
//

import SwiftUI

struct PreventionTipsPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Prevention Tips")
                    .font(.largeTitle)
                    .padding()

                Text("Provide practical tips and strategies for preventing gun violence, such as safety measures, community programs, and legislative efforts.")
                    .padding()

                // Additional content can be added here
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Prevention Tips")
    }
}

struct PreventionTipsPage_Previews: PreviewProvider {
    static var previews: some View {
        PreventionTipsPage()
    }
}


//
//  ResourcesPageView.swift
//  UserAuth
//
//  Created by Jordan Conley on 8/5/24.
//

import SwiftUI

struct ResourcesPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Resources and Support")
                    .font(.largeTitle)
                    .padding()

                Text("List resources such as helplines, counseling services, community organizations, and more that can provide support to those affected by gun violence.")
                    .padding()

                // Additional content can be added here
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Resources")
    }
}

struct ResourcesPage_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesPage()
    }
}


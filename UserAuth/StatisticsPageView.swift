//
//  StatisticsPageView.swift
//  UserAuth
//
//  Created by Jordan Conley on 8/5/24.
//

import SwiftUI

struct StatisticsPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Gun Violence Statistics")
                    .font(.largeTitle)
                    .padding()

                Text("Here you can present statistics related to gun violence, such as the number of incidents, affected demographics, trends over time, etc.")
                    .padding()

                // Additional content can be added here
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Statistics")
    }
}

struct StatisticsPage_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsPage()
    }
}


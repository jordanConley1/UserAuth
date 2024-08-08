//
//  ContentView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: StatisticsPage()) {
                    Text("Gun Violence Statistics")
                }

                NavigationLink(destination: PreventionTipsPage()) {
                    Text("Prevention Tips")
                }

                NavigationLink(destination: ResourcesPage()) {
                    Text("Resources and Support")
                }
            }
            .navigationTitle("Gun Violence Information")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

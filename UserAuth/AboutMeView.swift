//
//  AboutMeView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/31/24.
//

import SwiftUI

struct AboutMeView: View {
    var body: some View {
        Text("About Me")
            .fontWeight(.bold)
            .font(.largeTitle)
        Spacer()
        Text("Hello! I’m Jordan Conley, and I’m passionate about ending gun violence in our communities. For years, I’ve dedicated my time and energy to advocating for sensible gun laws, promoting gun safety education, and supporting survivors of gun violence. My journey began with a simple but profound realization: every life lost to gun violence is a tragedy that could have been prevented.")
            .fontWeight(.bold)
            .foregroundColor(.red)
        Spacer()
    }
}

#Preview {
    AboutMeView()
}

//
//  GunView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/15/24.
//

import SwiftUI

struct GunView: View {
    var body: some View {
        VStack {
            Text("Stop gun violence")
                .font(.largeTitle)
                .foregroundColor(.black)
            Spacer()
            Image("gun")
                .resizable()
                .frame(width:250, height:200)
                .imageScale(.small)
            NavigationLink{
                ActivistView()
            } label: {
                Text("George Clooney")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .font(.largeTitle)
                NavigationLink{
                    SarahView()
                } label: {
                    Text("Sarah Chadwick")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .font(.largeTitle)
                    }
                
                    
                }
            VStack{
                NavigationLink{
                    MattView()
                } label: {
                    Text("Matthew Cartwright")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .font(.largeTitle)
                    NavigationLink{
                        AlfonsoView()
                    } label: {
                        Text("Alfonso Calderón Atienza")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .font(.largeTitle)
                        }
                    }
            }
            Spacer()
                Text("Fewer injuries and Deaths! Streghten the community and lower crime rates")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
        }
    }


#Preview {
    GunView()
}

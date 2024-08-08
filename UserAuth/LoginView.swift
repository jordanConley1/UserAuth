//
//  LoginView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/1/24.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = " "
    @State private var password = " "
    @State private var errormessage = " "
    @State private var isLoggedIn = false

    @State private var pulsate = false
    var body: some View {
        NavigationStack{
            Image(systemName: "exclamationmark.octagon.fill")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width:100, height:100)
                .foregroundColor(.red)
                .scaleEffect(pulsate ? 1.0 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true),
                    value: pulsate
                ).onAppear {
                    self.pulsate = true
                }
            
            if isLoggedIn {
                ContentView()
            } else {
                Text("Sign In")
                    .font(.title)
                    .padding()
                Text("Email Address")
                TextField("Email Address", text: $email)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                Text("Password")
                SecureField("**********", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                Button(action: logIn){
                    Text("Sign In")
                    Image(systemName: "arror.right")
                }
                Text(errormessage)
                NavigationLink{
                    SignUpView()
                } label: {
                    Text("Don't Have an Account?")
                    Text("Sign Up")
                        .fontWeight(.bold)
                }
                NavigationLink{
                    GunView()
                } label: {
                    Text("No Account?")
                    Text("Browse Here")
                        .fontWeight(.bold)
                    
                }
                NavigationLink{
                    AboutMeView()
                } label: {
                    Text("About Me")
                        .fontWeight(.bold)
                }
            }
            Text(errormessage)
        }
    }
    
    func logIn() {
        Auth.auth().signIn(withEmail: email, password: password) {authResult, error in if let error = error {
            errormessage = error.localizedDescription
        } else {
            isLoggedIn = true
            }
        }
    }
}
    
    


#Preview {
    LoginView()
}

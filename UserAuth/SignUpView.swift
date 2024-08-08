//
//  SignUpView.swift
//  UserAuth
//
//  Created by Jordan Conley on 7/3/24.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct SignUpView: View {
    @State private var email = " "
    @State private var password = " "
    @State private var errormessage = " "
    @State private var signUpSuccessful = false
    var body: some View {
        NavigationStack{
            if signUpSuccessful {
                ContentView()
            } else {
                Text("Sign Up")
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
                Button(action: signUp){
                    Text("Sign Up")
                    Image(systemName: "arrow.right")
                }
                Text(errormessage)
                
                NavigationLink{
                    LoginView()
                } label: {
                    Text("Already Have an Account?")
                    Text("Sign In")
                        .fontWeight(.bold)
                }
                NavigationLink{
                    InformationView()
                } label: {
                    Text("No Account?")
                    Text("Browse Here")
                        .fontWeight(.bold)
                }
            }
        }
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) {authResult, error in if let error = error {
            errormessage = error.localizedDescription
        } else {
            signUpSuccessful = true
            if let user = authResult?.user {
                let db = Firestore.firestore()
                db.collection("users").document(user.uid).setData(["email": user.email ?? " ", "uid": user.uid]) { error in
                    if error != nil {
                        errormessage = "Error Saving user"
                    } else {
                        errormessage = "User Signed Up successful!"
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    SignUpView()
}

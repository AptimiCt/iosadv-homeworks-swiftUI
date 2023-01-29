//
//
// ProfileVKView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct ProfileVKView: View {
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.top, 100)
            VStack(spacing: -0.5) {
                TextField("Email or phone", text: $login)
                    .modifier(TextFielder())
                SecureField("Password", text: $password)
                    .modifier(TextFielder())
            }
            .cornerRadius(10)
            .padding(.top, 60)
            .padding(16)
            
            Button(action: {
                print("Log in")
            }) {
                Text("Log in")
                    .frame(height: 50)
                    .foregroundColor(Color(.white))
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background((Color("buttonColor")))
            .cornerRadius(10)
            .padding(16)
            
            Spacer()
        }
        
    }
}

struct ProfileVKView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVKView()
    }
}

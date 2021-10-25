//
//  ContentView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    @State private var ShouldShowLogo = true
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                Image("vkBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
            ScrollView(showsIndicators: false) {
                VStack {
                    if ShouldShowLogo {
                        VStack {
                            Image("vkLogo")
                                .resizable()
                                .frame(maxWidth: 100, maxHeight: 100)
                                .padding(.top, 30)
                                .padding(.bottom,30)
                            
                            Text("VKClone SwiftUI App")
                                .font(.largeTitle)
                                .padding(.top, 30)
                        }
                    }
                    
                    VStack {
                        HStack {
                            Text("Login:")
                            Spacer()
                            TextField("", text: $login)
                                .frame(maxWidth: 150)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        }
                        HStack {
                            Text("Password:")
                            Spacer()
                            SecureField("", text: $password)
                                .frame(maxWidth: 150)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                        .frame(maxWidth: 250)
                        .padding(.top, 50)
                    
                        Button (action: { print("Hello") }) {
                            Text("LogIn")
                                .font(.title2)
                        }
                        .padding(.top, 50)
                        .padding(.bottom, 30)
                        .disabled(login.isEmpty || password.isEmpty)
                        .buttonStyle(.plain)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

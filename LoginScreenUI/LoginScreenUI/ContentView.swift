//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by Abhigyan Gupta on 07/05/23.
//

import SwiftUI

struct ContentView: View {

    @State private var username = ""
    @State private var password = ""
    @State private var WrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var showingSignupUI = false
    var body: some View {
            NavigationView{
                ZStack{
                    Color.purple
                        .ignoresSafeArea()
                    Ellipse().scale(1).foregroundColor(.white.opacity(0.15))
                    Ellipse().scale(0.85).foregroundColor(.white)
                    VStack{
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("UserName",text:$username)
                            .padding()
                            .frame(width:300,height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red,width: CGFloat(WrongUsername))
                        SecureField("Password",text:$password)
                            .padding()
                            .frame(width:300,height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red,width: CGFloat(wrongPassword))
                        Button("Login"){
                            authenticateUser(username: username, password: password)
                        }.foregroundColor(.white)
                            .frame(width: 300,height: 50)
                            .background(Color.purple)
                            .cornerRadius(10)
                            .padding(5)
                        NavigationLink(destination: Text("You are Logged in as \(username)").background(Color.yellow), isActive:$showingLoginScreen){
                            EmptyView()
                        }
                        Button(action:{showingSignupUI=true}){
                            Text("Create a New Account").foregroundColor(.white)
                                .frame(width: 300,height: 50)
                                .background(Color.purple)
                                .cornerRadius(10)
                            NavigationLink("", destination: SignupUI(),isActive:$showingSignupUI)
                        }
                        
                    }
                    
                }.navigationBarHidden(true)
                
                
            }
        }
    func authenticateUser(username : String,password:String){
        if username.lowercased() == "abhi678gupta"{
            WrongUsername=0
            if password.lowercased() == "corecore" {
                wrongPassword=0
                showingLoginScreen=true
            }else{
                wrongPassword=2
            }
        }else{
            WrongUsername=2
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

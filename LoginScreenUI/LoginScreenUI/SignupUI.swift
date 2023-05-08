//
//  SignupUI.swift
//  LoginScreenUI
//
//  Created by Abhigyan Gupta on 08/05/23.
//

import SwiftUI

struct SignupUI: View{
    @State private var email = ""
    @State private var NewPassword = ""
    @State private var ConfirmPassword = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color.purple
                    .ignoresSafeArea()
                Ellipse().scale(1).foregroundColor(.white.opacity(0.15))
                Ellipse().scale(0.86).foregroundColor(.white)
                VStack{
                    Text("Signup")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Email",text:$email)
                        .padding()
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    SecureField("New Password",text:$email)
                        .padding()
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    SecureField("Confirm Password",text:$ConfirmPassword)
                        .padding()
                        .frame(width: 300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    Button("SignUp"){
                       
                    }.foregroundColor(.white)
                        .frame(width: 300,height: 50)
                        .background(Color.purple)
                        .cornerRadius(10)
                    
                    
                }
                
                
            }.navigationBarHidden(true)
            
            
        }
    }
    
}
struct SignupUI_Previews: PreviewProvider {
    static var previews: some View {
        SignupUI()
    }
}

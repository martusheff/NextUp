//
//  SignUpView.swift
//  NextUp
//
//  Created by andronick martusheff on 8/3/21.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack{
            Image("NextUp")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding(.bottom, 32)
               

            
            
            
            VStack {
                Text("E-Mail")
                    .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                
                
                TextField("", text: $email)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
                    .padding(.horizontal)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                Text("Password")
                    .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .padding(.top, 8.0)
                
                
                SecureField("", text: $password)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
                    .padding(.horizontal)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Button(action: {
                        
                        guard !email.isEmpty, !password.isEmpty else { return }
                        
                        viewModel.signUp(email: email, password: password)
                        
                    }, label: {
                        Text("Sign Up")
                            .font(.title).bold()
                            .frame(width: 130, height: 50)
                            .foregroundColor(.white)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                            .background(Color.red)
                        
                        
                    }).background(Color.black)
                    .padding(.top, 30)
                    
                    
                    
                    
                    /*
                     Button(action: {
                     
                     }, label: {
                     Text("Sign Up")
                     .font(.title).bold()
                     .padding(6)
                     .foregroundColor(.white)
                     .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                     .background(Color.red)
                     
                     
                     }).background(Color.black)
                     .padding(.top, 30)
                     */
                    
                }
                Spacer()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

//
//  SignInView.swift
//  NextUp
//
//  Created by andronick martusheff on 8/3/21.
//

import SwiftUI

struct SignInView: View {
    
    @State var phoneNumber = ""
    @State var pin = ""
    
    var body: some View {
        NavigationView {
            VStack{
                Image("NextUp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding(.bottom, 32)
                
                
                
                VStack {
                    Text("Phone Number")
                        .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                     
                    
                    TextField("", text: $phoneNumber)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .keyboardType(.numberPad)
                        .font(.title.bold())
                        .multilineTextAlignment(.center)
                        .frame(width: 250)
                        .padding(.horizontal)
                    
                    Text("Pin")
                        .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        .padding(.top, 8.0)
                    
                    
                    SecureField("", text: $pin)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .keyboardType(.numberPad)
                        .font(.title.bold())
                        .multilineTextAlignment(.center)
                        .frame(width: 150)
                        .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Text("Sign In")
                                .font(.title).bold()
                                .padding(6)
                                .foregroundColor(.white)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                .background(Color.red)
                            
                                
                        }).background(Color.black)
                        .padding(.top, 30)
                        
                        
                        
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
                    }
                    
                    
                    
                    
                    
                    Spacer()
                }
            }
        
            
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

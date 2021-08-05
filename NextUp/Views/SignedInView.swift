//
//  SignedInView.swift
//  NextUp
//
//  Created by andronick martusheff on 8/3/21.
//

import SwiftUI

struct SignedInView: View {
    @EnvironmentObject var viewModel: AppViewModel
    @State var width: CGFloat = 0
    @State var cutyaCounter = 0
    @State var enableEgg = false
    @State var isAndron: CGFloat = 0
    
    
    var body: some View {
        VStack {
            
            Image("NextUp")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding(.bottom, 32)
            
            Text("You are now Signed In")
                .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                let id = viewModel.auth.currentUser?.uid
                let username = "\(User().username)"
                
                viewModel.database.collection("users").document(username).updateData(["id": id!])
                
                if viewModel.auth.currentUser?.uid == "SmbdtMy7uKZrZb7IpAMZ9yNzcTu1" {
                    enableEgg = true
                    isAndron = 320
                }
                
            }, label: {
                Text("SET ID")
                    .font(.title).bold()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.white)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                    .padding(.top)
            })
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .font(.title).bold()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.white)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                
                
                
                
            }).background(Color.black)
            .padding(.top, 10)
            
            Button(action: {
                if self.width == 0 {
                    self.width = 100
                    cutyaCounter += 1
                } else {
                    self.width = 0
                }
                
                
            }, label: {
                Text("Heart for Frosya")
                    .font(.title).bold()
                    .frame(width: isAndron, height: 50)
                    .foregroundColor(.white)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                    .padding(.top, 10)
                
                
            })
            
            
            HStack {
                VStack {
                Image("Heart")
                    
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                
                
                Text("Cutya Counter")
                    .font(.headline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .frame(width: width * 2)
                    .padding(.top, 10)
                
                Text("\(cutyaCounter)")
                    .font(.title).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .frame(width: width * 2)
            }
            }
            
            
            Spacer()
        }
    }
}

struct SignedInView_Previews: PreviewProvider {
    static var previews: some View {
        SignedInView()
    }
}

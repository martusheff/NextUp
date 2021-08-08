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
    @State var name = ""
    
    let userViewModel: UserViewModel = UserViewModel()
    
    
    var body: some View {
        VStack {
            
            Image("NextUp")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding(.bottom, 32)
            
            
            Text("Welcome " +  name + "\nYou are now Signed In")
                .font(.title3).bold().textCase(.uppercase).multilineTextAlignment(.center)
            

            
            Button(action: {
                let id = viewModel.auth.currentUser?.uid
                let email = "\(User().email)"
                let docRef = viewModel.database.collection("users").document("\(email)")
                
            
                
                viewModel.database.collection("users").document("\(email)").updateData(["id": id!])
                userViewModel.updateData(email: User().email)
                name = User().name
                
                
                
                if viewModel.auth.currentUser?.uid == "GFlUuP1ad8ShVaqjuPXLOPJ3CMO2" {
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
                userViewModel.updateData(email: User().email)
                
                name = User().name
            }, label: {
                Text("My Info")
                    .font(.title).bold()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.white)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                
                
                
                
            }).background(Color.black)
            .padding(.top, 10)
            
            NavigationLink("PROFILE", destination: UserAccountView())
                .frame(width: 150, height: 50)
                .background(Color.red)
                .font(.title.bold())
                .foregroundColor(.white)
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

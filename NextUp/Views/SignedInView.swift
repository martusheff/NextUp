//
//  SignedInView.swift
//  NextUp
//
//  Created by andronick martusheff on 8/3/21.
//

import SwiftUI

struct SignedInView: View {
    @EnvironmentObject var viewModel: AppViewModel
    
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
                
                viewModel.database.collection("users").document("andronick").updateData(["id": id])
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
            
            Spacer()
        }
    }
}

struct SignedInView_Previews: PreviewProvider {
    static var previews: some View {
        SignedInView()
    }
}

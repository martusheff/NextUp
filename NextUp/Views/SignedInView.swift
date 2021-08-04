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
            Text("You are now Signed In")
            
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .font(.title).bold()
                    .frame(width: 130, height: 50)
                    .foregroundColor(.white)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                
                
            }).background(Color.black)
            .padding(.top, 30)
        }
    }
}

struct SignedInView_Previews: PreviewProvider {
    static var previews: some View {
        SignedInView()
    }
}

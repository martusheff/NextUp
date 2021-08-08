//
//  UserAccountView.swift
//  NextUp
//
//  Created by andronick martusheff on 8/5/21.
//

import SwiftUI

struct UserAccountView: View {
    
    var body: some View {
        
        VStack {
            Group {
                Image("DefaultUserImage").resizable().scaledToFit()
                    .frame(width: 250).padding(.bottom, 30)
                
                
                Text("Name")
                    .font(.subheadline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Text(User().name)
                    .font(.title2).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).padding(.bottom,2)
                
                Text("Username")
                    .font(.subheadline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Text(User().username)
                    .font(.title2).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).padding(.bottom,2)
                
                Text("Age")
                    .font(.subheadline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Text(User().age)
                    .font(.title2).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).padding(.bottom,2)
                
                Text("email")
                    .font(.subheadline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                Text(User().email)
                    .font(.title2).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).padding(.bottom,2)
            }
            
            Group {
                Text("id")
                    .font(.subheadline).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                
                Text(User().id)
                    .font(.title3).bold().textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/).padding(.bottom,2)
                
                
            }
            Spacer()
            /*
             VStack {
             HStack {
             Text("Name")
             .font(.title).bold().textCase(.uppercase).foregroundColor(.white).padding(.trailing, 20.289)
             Text(User().name)
             .font(.title).bold().textCase(.uppercase).frame(width: 200, height: 50).foregroundColor(.black).frame().background(Color.white)
             }.frame(width: 999).background(Color.red).padding(.bottom, 10)
             
             HStack {
             Text("USER")
             .font(.title).bold().textCase(.uppercase).foregroundColor(.white).padding(.trailing, 20.289)
             Text(User().username)
             .font(.title).bold().textCase(.uppercase).frame(width: 200, height: 50).foregroundColor(.black).frame().background(Color.white)
             }.frame(width: 999).background(Color.red).padding(.bottom, 10)
             
             HStack {
             Text("AGE")
             .font(.title).bold().textCase(.uppercase).foregroundColor(.white).padding(.trailing, 20.289)
             Text(User().age)
             .font(.title).bold().textCase(.uppercase).frame(width: 200, height: 50).foregroundColor(.black).frame().background(Color.white)
             }.frame(width: 999).background(Color.red).padding(.bottom, 10)
             
             HStack {
             Text("EMAIL")
             .font(.title).bold().textCase(.uppercase).foregroundColor(.white).padding(.trailing, 20.289)
             Text(User().email)
             .font(.title).bold().textCase(.uppercase).frame(width: 200, height: 50).foregroundColor(.black).frame().background(Color.white)
             }.frame(width: 999).background(Color.red).padding(.bottom, 10)
             
             HStack {
             Text("ID")
             .font(.title).bold().textCase(.uppercase).foregroundColor(.white).padding(.trailing, 20.289)
             Text(User().id)
             .font(.title).bold().textCase(.uppercase).frame(width: 200, height: 50).foregroundColor(.black).frame().background(Color.white)
             }.frame(width: 999).background(Color.red).padding(.bottom, 10)
             
             
             
             
             }
             */
            
            
        }
    }
}

struct UserAccountView_Previews: PreviewProvider {
    static var previews: some View {
        UserAccountView()
    }
}

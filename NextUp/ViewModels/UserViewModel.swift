//
//  UserViewModel.swift
//  NextUp
//
//  Created by andronick martusheff on 8/5/21.
//

import Foundation
import FirebaseFirestore

class UserViewModel {
    
    private var db = Firestore.firestore()
    
    func updateData(email: String) {
        

        var currUser = User()
        var docRef = db.collection("users").document(currUser.email)
        
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let name = document.get("name") as! String
                let age = document.get("age") as! String
                let username = document.get("username") as! String
                let email = document.get("email") as! String
                let id = document.get("id") as! String
                
                var currUser = User()
                currUser.name = name
                currUser.age = age
                currUser.username = username
                currUser.email = email
                currUser.id = id
                
                
            } else {
                print("Document does not exist")
                return
            }
        }
    }
}

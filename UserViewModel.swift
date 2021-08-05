//
//  UserViewModel.swift
//  
//
//  Created by andronick martusheff on 8/4/21.
//

import Foundation


class UserViewModel : ObservableObject {
    
    struct User {
        var username: String {
            get {
                return UserDefaults.standard.object(forKey: "username") as? String ?? ""
            }
            set(newValue) {
                UserDefaults.standard.set(newValue, forKey: "username")
            }
        }
    }
}


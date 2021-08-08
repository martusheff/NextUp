//
//  User.swift
//  NextUp
//
//  Created by andronick martusheff on 8/5/21.
//

import Foundation

struct User: Codable {
    
    var email: String {
        get { return UserDefaults.standard.object(forKey: "email") as? String ?? ""
        } set(newValue) { UserDefaults.standard.set(newValue, forKey: "email")}}
    
    var name: String {
        get {
            return UserDefaults.standard.object(forKey: "name") as? String ?? ""
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: "name")
        }
    }
    
    var age: String {
        get { return UserDefaults.standard.object(forKey: "age") as? String ?? ""
        } set(newValue) { UserDefaults.standard.set(newValue, forKey: "age")}}
    
    var id: String {
        get { return UserDefaults.standard.object(forKey: "id") as? String ?? ""
        } set(newValue) { UserDefaults.standard.set(newValue, forKey: "id")}}
    
    var username: String {
        get { return UserDefaults.standard.object(forKey: "username") as? String ?? ""
        } set(newValue) { UserDefaults.standard.set(newValue, forKey: "username")}}
    
}

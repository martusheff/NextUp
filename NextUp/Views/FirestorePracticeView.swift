//
//  FirestorePracticeView.swift
//  
//
//  Created by andronick martusheff on 8/4/21.
//

import SwiftUI
import FirebaseFirestore

struct FirestorePracticeView: View {
    
    @State var name = ""
    @State var age = ""
    
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        
        
        
        VStack {
            Text("Enter Name")
            
            TextField("", text: $name)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
            
            Text("Enter Age")
            
            TextField("", text: $age)
                .padding()
                .keyboardType(.numberPad)
                .background(Color.black)
                .foregroundColor(.white)
                
            
            Button(action: {
                writeData(name: name, age: age)
            }, label: {
                Text("Button")
            })
            
        }
    }
    
    func writeData(name: String, age: String) {
        viewModel.database.collection("nextup").document("practice")
            .setData([name: age], merge: true)
        }
    }



struct FirestorePracticeView_Previews: PreviewProvider {
    static var previews: some View {
        FirestorePracticeView()
    }
}

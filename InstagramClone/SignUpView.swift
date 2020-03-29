//
//  SignUpView.swift
//  InstagramClone
//
//  Created by ilario salatino on 18.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var model = SignUpViewModel()
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    
    
    var body: some View {
        
        VStack{
            
            
            
            Text(NSLocalizedString("SU_title", comment: ""))
                .font(.largeTitle)
                .foregroundColor(Colors.lightBlueColor)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField(NSLocalizedString("username", comment: ""), text: $username)
                .padding()
                .background(Colors.lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField(NSLocalizedString("password", comment: ""), text: $password)
                .padding()
                .background(Colors.lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField(NSLocalizedString("email", comment: ""), text: $email)
                .padding()
                .background(Colors.lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {
                
                self.model.signUp(username: self.username, password: self.password, email: self.email)
                
            }){
                Text("Sign Up!")
                 .font(.headline)
                 .foregroundColor(.white)
                 .padding()
                 .frame(width: 220, height: 60)
                    .background(Colors.lightBlueColor)
                 .cornerRadius(15.0)
            }
        }.padding()
            .alert(isPresented: self.$model.alertModel.show ) { () -> Alert in
                Alert(title: Text(self.model.alertModel.title), message: Text(self.model.alertModel.message), dismissButton: .default(Text(self.model.alertModel.button)))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

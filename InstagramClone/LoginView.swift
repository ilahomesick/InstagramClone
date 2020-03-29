//
//  LoginView.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @State private var showingAlert = false

    var body: some View {
       VStack{
        Image("ic_logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 150)
        .clipShape(Circle())
        .shadow(radius: 5)
        .padding(.bottom, 75)
           Text(NSLocalizedString("lgn_title", comment: ""))
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
           Button(action: {
            if (self.password.count == 0 || self.username.count == 0){
                
                // If not, we must show the Alert
                
            } else {
                // If so, we can proceed
                
            }
           }){
               Text(NSLocalizedString("lgn_login", comment: ""))
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Colors.lightBlueColor)
                .cornerRadius(15.0)
           }
       }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//
//  ContentView.swift
//  Profile Page
//
//  Created by David Xu on 3/5/24.
//

import SwiftUI
import Swift

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Image("Logo") // We have Patrick here for now!
            
                .resizable()
                .frame(width:100, height:100)
            Text("Let's Make Berkeley a Safer Place.")
                .bold()
                .font(.system(size:25))
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/.bottom, 25.0)
                .foregroundStyle(Color(red: 0.7686274509803922, green: 0.5098039215686274, blue: 0.054901960784313725))
            TextField("Email",text: $email)
                .padding()
                .frame(width:300, height:50)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 0.5))
            TextField("Password",text: $password)
                .padding()
                .frame(width:300, height:50)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 0.5))
                .padding(.bottom, 20.0)
                Button(action:{}) {
                    
                    Text("Login")
                        .bold()
                        .padding(20.0)
                        .foregroundStyle(Color(red:1,  green:1, blue:1))

                        .frame(width:300, height:40, alignment:.center)
                        .background(styles.BerkeleyBlue)
                        .cornerRadius(20)

                }
            Button(action:{}) {
                // i hate this so much

                Text("Sign Up")
                    .fontWeight(.medium)
                    .foregroundStyle(Color(red:0,  green:0, blue:0))

                    .frame(width:300, height:40, alignment:.center)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.black, lineWidth: 1))
                    .cornerRadius(20)

            }
            // this is all probably bad code.
            // Because I dont think this will resize very well
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

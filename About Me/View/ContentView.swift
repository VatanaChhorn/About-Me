//
//  ContentView.swift
//  About Me
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 1.00, green: 0.75, blue: 0.46)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image(Titles.PersonalInfo.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)
                )
                
                
                Text("Vatana Chhorn")
                    .font(.custom("Pacifico-Regular", size: 35))
                    .foregroundColor(Color(red: 0.33, green: 0.36, blue: 0.41, opacity: 1.00))
                
                Text("iOS developer to be")
                    .font(.system(size: 25))
                    .foregroundColor(Color(red: 0.33, green: 0.36, blue: 0.41, opacity: 1.00))
                
                
                
                Divider()
                    .padding()
                
                Button(action: {   UIApplication.shared.open(Titles.PersonalInfo.phoneNumberDail!)}) {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 400, height: 50, alignment: .center)
                        .clipShape(Capsule())
                        .overlay(
                            HStack {
                                Image(systemName: "phone.fill")
                                Text(Titles.PersonalInfo.phoneNumber)
                            }    .foregroundColor(.black)
                    ).padding()
                    
                }
                
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 400, height: 50, alignment: .center)
                    .clipShape(Capsule())
                    .overlay(
                        HStack {
                            Image(systemName: "envelope.fill")
                            Text(Titles.PersonalInfo.emailAddress)
                        }    .foregroundColor(.black)
                        
                )
                Divider()
                    .padding()
                
                
                
                Spacer()
                
                HStack {
                    Button(action: {
                        UIApplication.shared.open(Titles.githubURL!)
                    }) {
                        Image(Titles.github)
                            .renderingMode(.original)
                            .padding(.leading)
                        
                    }
                    
                    Button(action: {
                        UIApplication.shared.open(Titles.instagramURL!)
                    }) {
                        Image(Titles.instagram)
                            .renderingMode(.original)
                        
                    }
                    
                    Button(action: {
                        UIApplication.shared.open(Titles.faceBookUrl!)
                    }) {
                        Image(Titles.facebook)
                            .renderingMode(.original)
                            .padding(.trailing)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ModifyProfile.swift
//  CityDog
//
//  Created by Nora Lilla Matyassi on 23/03/2023.
//

import SwiftUI

struct ModifyProfile: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            
            Image("Chris")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding(39.0)
            
            Text("Chris Schoerning")
                .fontWeight(.heavy)
                .font(.system(size: 36.0))
                .foregroundColor(Color.black)
            
            Spacer()
            Section {
                HStack {
                    Text("e-mail")
                    TextField("mail", text: .constant("")) // TODO: Update binding
                        .font(.system(size: 18.0))
                        .padding(8.0)
                        .foregroundColor(Color.black)
                        .background(
                            Color.gray
                                .cornerRadius(8.0)
                                .opacity(0.36)
                        )
                }
            }.padding()
            
            Section {
                HStack {
                    Text("password")
                    TextField("password", text: .constant("")) // TODO: Update binding
                        .font(.system(size: 18.0))
                        .padding(8.0)
                        .foregroundColor(Color.black)
                        .background(
                            Color.gray
                                .cornerRadius(8.0)
                                .opacity(0.36)
                        )
                }
            }.padding()
            
            Section {
                HStack {
                    Text("name")
                    TextField("First name / Last name", text: .constant("")) // TODO: Update binding
                        .font(.system(size: 18.0))
                        .padding(8.0)
                        .foregroundColor(Color.black)
                        .background(
                            Color.gray
                                .cornerRadius(8.0)
                                .opacity(0.36)
                        )
                }
            }.padding()
            
            Spacer()
            
            Button(action: {
                // TODO: Specify action
            }, label: {
                Text("save changes")
                    .fontWeight(.heavy)
                    .font(.system(size: 23.0))
                    .padding(16.0)
                    .frame(width: 337.0)
                    .foregroundColor(Color.white)
                    .background(
                        Color(hue: 0.401, saturation: 1, brightness: 1)
                            .cornerRadius(16.0)
                    )
            })
        }
    }
}

struct ModifyProfile_Previews: PreviewProvider {
    static var previews: some View {
        ModifyProfile()
    }
}

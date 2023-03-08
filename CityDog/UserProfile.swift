
import SwiftUI

struct UserProfile: View {
    var body: some View {
        ZStack {
            Color.clear.background(
                Color.white
                    .opacity(0.48)
            )
            .edgesIgnoringSafeArea(.all)
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
                //               Text("name")
                //                 .fontWeight(.regular)
                //                 .font(.system(size: 18.0))
                //                 .foregroundColor(Color.black)
                Spacer()
                HStack(alignment: .center, spacing: 0.0) {
                    VStack(alignment: .center, spacing: 0.0) {
                        
                        Text("my dog")
                        
                            .padding()
                            .fontWeight(.regular)
                            .font(.system(size: 18.0))
                            .foregroundColor(Color.black)
                        Text("dog 2")
                            .padding()
                            .fontWeight(.regular)
                            .font(.system(size: 18.0))
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 0.0) {
                        Text("Lenny")
                            .padding()
                            .fontWeight(.regular)
                            .font(.system(size: 18.0))
                            .foregroundColor(Color.black)
                        Text("Snoop")
                            .padding()
                            .fontWeight(.regular)
                            .font(.system(size: 18.0))
                            .foregroundColor(Color.black)
                    }
                }
                Spacer()
                Button(action: {
                    // TODO: Specify action
                }, label: {
                    Text("modifier chien")
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
                Spacer()
                    .frame(height: 18.0)
                Button(action: {
                    // TODO: Specify action
                }, label: {
                    Text("modifier le profil")
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
                Spacer()
                Button(action: {
                    // TODO: Specify action
                }, label: {
                    Text("se déconnecter ")
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
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

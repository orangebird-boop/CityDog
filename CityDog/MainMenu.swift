import SwiftUI


struct MainMenu: View {
    
    var body: some View {
        ZStack {
            Color.clear.background(
//                Color(hue: 0.168, saturation: 1, brightness: 1)
//                    .opacity(0.48)
            )
            .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                VStack {
                    Spacer()
                    HStack (alignment: .top){
                        VStack {
                            Image(systemName: "cross.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.black)
                                .padding(6.0)
                                .frame(width: 169.0, height: 168.0)
                                .background(
                                    Color(hue: 0.282, saturation: 1, brightness: 1)
                                        .cornerRadius(31.0)
                                )
                            Text("Veterinaire")
                                .bold()
                                .fontWeight(.heavy)
                                .font(.system(size: 28.0))
                                .foregroundColor(Color.accentColor)
                        }
                        
                        VStack {
                            Image(systemName: "pawprint.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.black)
                                .padding(6.0)
                                .frame(width: 168.0, height: 168.0)
                                .background(
                                    Color(hue: 0.554, saturation: 1, brightness: 1)
                                        .cornerRadius(31.0)
                                )
                            
                            Text("Promenades")
                                .fontWeight(.heavy)
                                .font(.system(size: 28.0))
                                .foregroundColor(Color.accentColor)
                            
                        }
                    }
                    
                    VStack{
                        HStack (alignment: .top){
                            VStack {
                                Image(systemName: "basket")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.black)
                                    .padding(6.0)
                                    .frame(width: 168.0, height: 168.0)
                                    .background(
                                        Color(hue: 0.049, saturation: 1, brightness: 1)
                                            .cornerRadius(31.0)
                                    )
                                Text("Animaleries")
                                    .bold()
                                    .fontWeight(.heavy)
                                    .font(.system(size: 28.0))
                                    .foregroundColor(Color.black)
                                
                            }
                            
                            VStack {
                                Image(systemName: "fork.knife")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.black)
                                    .padding(6.0)
                                    .frame(width: 168.0, height: 168.0)
                                    .background(
                                        Color(hue: 0.105, saturation: 1, brightness: 1)
                                            .cornerRadius(31.0)
                                    )
                                Text("Bars & Restaurants")
                                    .fontWeight(.heavy)
                                    .font(.system(size: 28.0))
                                    .foregroundColor(Color.black)
                                Spacer()
                                    .frame(height: 8.0)
                                
                                
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        Button(action: {
                                             // TODO: Specify action
                                         }, label: {
                                             Text("Connexion")
                                                 .fontWeight(.heavy)
                                                 .font(.system(size: 23.0))
                                                 .padding(16.0)
                                                 .frame(width: 337.0)
                                                 .foregroundColor(Color.white)
                                                 .background(
                                                     Color(hue: 0.373, saturation: 1, brightness: 1)
                                                         .cornerRadius(11.0)
                                                 )
                                                 .shadow(radius: 2.0)
                                         })
                    }
                } .navigationTitle("City Dog")
                
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

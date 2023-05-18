import SwiftUI
import CityDogEntities

struct MainMenu: View {
    
    @State private var path: [String] = []
    
    @State private var isNavigatingToLogIn = false
  
 
    var body: some View {
        ZStack {
            Color.clear.background(
                
            )
            .edgesIgnoringSafeArea(.all)
    
                
                NavigationStack {
                    VStack {
                        Spacer()
                        HStack (alignment: .top){
//                            NavigationLink {
//                                Elements(viewModel: VeterinariansViewModel())
//                            } label: {
//                                VStack {
//                                    Group {
//                                        Image(systemName: "cross.fill")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .foregroundColor(Color.black)
//                                            .padding(6.0)
//                                            .frame(width: 169.0, height: 168.0)
//                                            .background(
//                                                Color(hue: 0.282, saturation: 1, brightness: 1)
//                                                    .cornerRadius(31.0)
//                                            )
//                                        Text("Veterinairy")
//                                            .bold()
//                                            .fontWeight(.heavy)
//                                            .font(.system(size: 28.0))
//                                            .foregroundColor(Color.accentColor)
//                                    }
//                                }
//                            }
                         
                            
                            NavigationLink {
                                Elements(viewModel: WalksViewModel())
                            } label: {
                                VStack {
                                    Group {
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
                                        
                                        Text("Walks")
                                            .fontWeight(.heavy)
                                            .font(.system(size: 28.0))
                                            .foregroundColor(Color.accentColor)
                                    }
                                }
                            }
                        }
                        
//                        VStack{
//                            HStack (alignment: .top){
//                                NavigationLink {
//                                    Elements(viewModel: ShopsViewModel())
//                                } label: {
//                                    VStack {
//                                        Group {
//                                            Image(systemName: "basket")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .foregroundColor(Color.black)
//                                                .padding(6.0)
//                                                .frame(width: 168.0, height: 168.0)
//                                                .background(
//                                                    Color(hue: 0.049, saturation: 1, brightness: 1)
//                                                        .cornerRadius(31.0)
//                                                )
//                                            Text("Pet Shops")
//                                                .bold()
//                                                .fontWeight(.heavy)
//                                                .font(.system(size: 28.0))
//                                                .foregroundColor(Color.accentColor)
//
//                                        }
//                                    }
//                                }
//
//                                NavigationLink {
//                                    Elements(viewModel: RestaurantsBarsViewModel())
//                                } label: {
//                                    VStack {
//                                        Group {
//                                            Image(systemName: "fork.knife")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .foregroundColor(Color.black)
//                                                .padding(6.0)
//                                                .frame(width: 168.0, height: 168.0)
//                                                .background(
//                                                    Color(hue: 0.105, saturation: 1, brightness: 1)
//                                                        .cornerRadius(31.0)
//                                                )
//                                            Text("Bars & Restaurants")
//                                                .fontWeight(.heavy)
//                                                .font(.system(size: 28.0))
//                                                .foregroundColor(Color.accentColor)
//                                            Spacer()
//                                                .frame(height: 8.0)
//                                        }
//                                    }
//
//                                }
//
//
//                            }
//
//                        }
                        Spacer()
                        
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

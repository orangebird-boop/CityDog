
import SwiftUI

struct UserProfile: View {
    @State var viewModel: RestaurantsAndBarsViewModel
    
    var body: some View {

        NavigationView {
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
                
                
                    NavigationStack {
                        
                        List {
                            ForEach(viewModel.places, id: \.id) { place in
                                NavigationLink(place.name, destination: DogProfile())
                            }
                        }
                        .navigationTitle("My dogs")
                      
                    }
                

                Spacer()
//                Button(action: {
//                    // TODO: Specify action
//                }, label: {
//                    Text("modifier chien")
//                        .fontWeight(.heavy)
//                        .font(.system(size: 23.0))
//                        .padding(16.0)
//                        .frame(width: 337.0)
//                        .foregroundColor(Color.white)
//                        .background(
//                            Color(hue: 0.401, saturation: 1, brightness: 1)
//                                .cornerRadius(16.0)
//                        )
//                })
                Spacer()
                    .frame(height: 18.0)
                Button(action: {
                    // TODO: Specify action
                }, label: {
                    Text("Add dog")
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
            .navigationTitle("My Profile")
            .toolbar {
                Button("Edit") {
                    print("About tapped!")
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(viewModel: RestaurantsAndBarsViewModel())
    }
}

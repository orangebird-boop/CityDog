
import SwiftUI

struct UserProfile: View {
    @State var viewModel: RandomViewModel
    @State private var isNavigatingToAddDog = false

    
    var body: some View {

        NavigationStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Section {
                    NavigationLink {
                        ModifyProfile()
                    } label: {
                        HStack(alignment: .center) {
                            Image("profile")
                                .resizable()
                                .cornerRadius(20)
                                .frame(width: 60, height: 60)
                                .clipped()
                                .aspectRatio(contentMode: .fit)
                            
                            VStack(alignment: .leading) {
                                Text("Sign in to CityDog")
                                    .foregroundColor(Color.accentColor)
                                    .lineLimit(nil)
                                Text("Set up your profile and more...")
                                    .foregroundColor(Color.gray)
                                
                            }
       
                        } .padding()
                    }
                }
              
//                .padding(.horizontal, 20)
//                .sheet(isPresented: $showSheet) {
//                            // Pick an image from the photo library:
//                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
//                    }
//
//                Text("Chris Schoerning")
//                    .fontWeight(.heavy)
//                    .font(.system(size: 36.0))
//                    .foregroundColor(Color.black)
                
              
//                    NavigationStack {
                        
                        List {
                            ForEach(viewModel.places, id: \.id) { place in
                                NavigationLink(place.name, destination: DogProfile())
                            }
                            NavigationLink {
                                AddDog()
                            } label: {
                                Text("Add dog")
                                
                            }.foregroundColor(Color.red)
                            
                        }
//                    }
                
                    
//                    Spacer()
                    
//                    Spacer()
//                        .frame(height: 18.0)
//                    NavigationLink(destination: AddDog(), isActive: $isNavigatingToAddDog) {
//                        EmptyView()
//                    }
//                    Button(action: {
//                        isNavigatingToAddDog = true
//                    }, label: {
//                        Text("Add Dog")
//                            .fontWeight(.heavy)
//                            .font(.system(size: 23.0))
//                            .padding(16.0)
//                            .frame(width: 337.0)
//                            .foregroundColor(Color.white)
//                            .background(
//                                Color(hue: 0.373, saturation: 1, brightness: 1)
//                                    .cornerRadius(11.0)
//                            )
//                            .shadow(radius: 2.0)
//                    })
                    Spacer()
//                    Button(action: {
//                        // TODO: Specify action
//                    }, label: {
//                        Text("se déconnecter ")
//                            .fontWeight(.heavy)
//                            .font(.system(size: 23.0))
//                            .padding(16.0)
//                            .frame(width: 337.0)
//                            .foregroundColor(Color.white)
//                            .background(
//                                Color(hue: 0.373, saturation: 1, brightness: 1)
//                                    .cornerRadius(11.0)
//                            )
//                            .shadow(radius: 2.0)
//                    })
                
            }
            .navigationTitle("My profile")

        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(viewModel: RandomViewModel())
    }
}

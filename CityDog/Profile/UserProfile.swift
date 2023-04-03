
import SwiftUI

struct UserProfile: View {
    @State var viewModel: RandomViewModel
    @State private var isNavigatingToAddDog = false
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {

        NavigationStack {
            VStack(alignment: .center, spacing: 0.0) {
                
                VStack {
                            Image(uiImage: self.image)
                          .resizable()
                          .cornerRadius(50)
                          .frame(width: 150, height: 150)
                          .background(Color.black.opacity(0.2))
                          .aspectRatio(contentMode: .fill)
                          .clipShape(Circle())

                 Text("Change photo")
                     .font(.headline)
                     .frame(maxWidth: .infinity)
                     .frame(height: 50)
                     .cornerRadius(16)
                     .foregroundColor(.accentColor)
                         .padding(.horizontal, 20)
                         .onTapGesture {
                           showSheet = true
                         }
                    }
                .padding(.horizontal, 20)
                .sheet(isPresented: $showSheet) {
                            // Pick an image from the photo library:
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                    }
                
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
                }
                    
                    Spacer()
                    
                    Spacer()
                        .frame(height: 18.0)
                    NavigationLink(destination: AddDog(), isActive: $isNavigatingToAddDog) {
                        EmptyView()
                    }
                    Button(action: {
                        isNavigatingToAddDog = true
                    }, label: {
                        Text("Add Dog")
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
                                Color(hue: 0.373, saturation: 1, brightness: 1)
                                    .cornerRadius(11.0)
                            )
                            .shadow(radius: 2.0)
                    })
                
            } .navigationTitle("My profile")
                .toolbar {
                    ToolbarItem {
                        NavigationLink {
                            // destination view to navigation to
                            ModifyProfile()
                        } label: {
                            Image(systemName: "pencil.circle")
                            
                        }
                    }
                }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(viewModel: RandomViewModel())
    }
}

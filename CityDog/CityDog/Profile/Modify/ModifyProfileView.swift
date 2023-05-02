import SwiftUI
import CityDogEntities

struct ModifyProfileView: View {
    
    init(viewModel: ModifyProfileViewModel) {
        self.viewModel = viewModel
    }
    
    @State private var viewModel: ModifyProfileViewModel
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {

            VStack(alignment: .center, spacing: 0.0) {
                Form {
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
                    
                    Section {
                        List {
                            NavigationLink {
                                // TODO: takes a VM with user to be able to update in DB
//                                ModifyName(name: "", firstName: "", middleName: "")
                            } label: {
                                Text("Name")
                            }
                            NavigationLink {
                                ModifyPassword(email: "", oldPSW: "", newPSW: "")
                            } label: {
                                Text("E-mail and password")
                            }
                        }
                    }
                }
            }.navigationTitle(viewModel.user.fullName)
            
//            Button(action: {
//                // TODO: Specify action
//            }, label: {
//                Text("save changes")
//                    .fontWeight(.heavy)
//                    .font(.system(size: 23.0))
//                    .padding(16.0)
//                    .frame(width: 337.0)
//                    .foregroundColor(Color.white)
//                    .background(
//                        Color(hue: 0.401, saturation: 1, brightness: 1)
//                            .cornerRadius(16.0)
//                    )
//            })
        }
    }
}

struct ModifyProfile_Previews: PreviewProvider {
    static var previews: some View {
        ModifyProfileView(viewModel: ModifyProfileViewModel(user: User.dummyUser()))
    }
}

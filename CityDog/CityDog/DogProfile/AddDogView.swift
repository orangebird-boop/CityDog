import SwiftUI
import PhotosUI
import CityDogEntities

struct AddDogView: View {
    

    var ageOfDog = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
    var viewModel: AddDogViewModel

    @State private var selectedDogBreed = ""
    @State private var selectedAge = ""
    @State private var dogName = ""
    @State private var profilPictureItem: PhotosPickerItem?
    @State private var profilPicture: Image?
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Form {
                VStack {
                    Image(uiImage: self.image)
                        .resizable()
                        .cornerRadius(50)
                        .frame(width: 150, height: 150)
                        .background(Color.black.opacity(0.2))
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                    
                    Text("Add photo")
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
            }
            
            Form {
                
                Section {
                    TextField("Buddy", text: $dogName)
                }header: {
                    Text("Name of your dog")
                }
                
                Section {
                    Picker("Please select a dog breed", selection: $selectedDogBreed) {
                        
                        ForEach(viewModel.getBreeds(), id: \.self) {
                            Text($0.name)
                            
                        }
                    }
                    
                }
                
                Section {
                    Picker("Please select your dogs age", selection: $selectedAge) {
                        ForEach(ageOfDog, id: \.self) {
                            Text($0)
                        }
                    }
                    
                }
            }.onChange(of: profilPictureItem) { _ in
                Task {
                    if let data = try? await profilPictureItem?.loadTransferable(type: Data.self) {
                        if let uiImage = UIImage(data: data) {
                            profilPicture = Image(uiImage: uiImage)
                            return
                        }
                    }
                    
                    print("Failed")
                }
            }
            
            
            Button(action: {
                // TODO: Specify action
            }, label: {
                Text("Save changes")
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

struct AddDog_Previews: PreviewProvider {
    static var previews: some View {
        AddDogView(viewModel: AddDogViewModel(dog: DogModel.dummyDog()))
    }
}


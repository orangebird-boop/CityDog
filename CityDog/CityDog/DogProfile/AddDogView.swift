import SwiftUI
import PhotosUI
import CityDogEntities

struct AddDogView: View {
    

    var ageOfDog = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
    var viewModel: AddDogViewModel
    var service: UserPersistenceServices

//    @State private var selectedDogBreed: Breed
    @State private var selectedDogBreedIndex = -1
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
                
                Section(header: Text("Please select a dog breed")) {
                                   Picker(selection: $selectedDogBreedIndex, label: Text("Please select a dog breed")) {
                                       ForEach(viewModel.dogBreeds, id: \.id) { breed in
                                           Text(breed.name).tag(breed.id)
                                       }
                                   }.pickerStyle(.navigationLink)
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
                saveDog()
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
    
    private func transformImage(_ image: UIImage) -> UIImage {
        let targetSize = CGSize(width: 200, height: 200) // Set image size here

        UIGraphicsBeginImageContextWithOptions(targetSize, false, 0.0)
        image.draw(in: CGRect(origin: .zero, size: targetSize))

        let transformedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return transformedImage ?? image
    }
    
    private func saveDog() {
        let transformedImage = transformImage(image) // image transformations here

            guard let imageData = transformedImage.jpegData(compressionQuality: 1.0) else {
                return
            }

            let base64ImageString = imageData.base64EncodedString()

        let dog = DogModel(id: UUID().uuidString, name: dogName, breed: viewModel.dogBreeds[selectedDogBreedIndex], age: selectedAge, pictureURL: base64ImageString)
        let user = service.fetchUser()

               
          
           

                viewModel.saveDog(dog: dog, for: user)
//        let dog = DogModel(name: dogName, age: selectedAge, breed: viewModel.dogBreeds[selectedDogBreedIndex])
//        let user = UserModel() // Replace with your user model instance
//
//        viewModel.saveDog(dog: dog, for: user)
    }

}

//struct AddDog_Previews: PreviewProvider {
//    static var previews: some View {
//        AddDogView(viewModel: AddDogViewModel(dog: DogModel.dummyDog()))
//    }
//}


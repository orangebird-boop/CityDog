import SwiftUI
import PhotosUI

struct AddDog: View {
    
    var dogBreeds = ["Golden Retrievers", "Boston Terriers", "Labrador Retrievers", "Poodles", "Border Collie", "Beagle", "Irish Setter", "Staffordshire Bull Terrier", "Cavalier King Charles Spaniel", "Cockapoo", "Boxer", "Shih Tzu", "French Bulldog","Fox Terrier", "unknown"]
    var ageOfDog = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
    
    @State private var selectedDogBreed = "unknown"
    @State private var selectedAge = "2"
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

                 Text("Change photo")
                     .font(.headline)
                     .frame(maxWidth: .infinity)
                     .frame(height: 50)
//                     .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.262745098, green: 0.0862745098, blue: 0.8588235294, alpha: 1)), Color(#colorLiteral(red: 0.5647058824, green: 0.462745098, blue: 0.9058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom))
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
                    TextField("Buddy", text: $dogName)
                }header: {
                    Text("Name of your dog")
                }
                
                Section {
                    Picker("Please select a dog breed", selection: $selectedDogBreed) {
                        ForEach(dogBreeds, id: \.self) {
                            Text($0)
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
        AddDog()
    }
}

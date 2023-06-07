
import SwiftUI
import CityDogEntities

struct UserProfileView: View {
    @State var viewModel: UserProfileViewModel
    @State private var isNavigatingToAddDog = false
    @State private var showingDeleteAlert = false
    
    
    
    var body: some View {

        NavigationStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Section {
                    NavigationLink {
                        ModifyProfileView(viewModel: ModifyProfileViewModel(user: viewModel.user))
                    } label: {
                        HStack(alignment: .center) {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                               
                                
                            
                            VStack(alignment: .leading) {
                                Text(viewModel.user.fullName)
                                    .foregroundColor(Color.accentColor)
                                    .lineLimit(nil)
                                Text("Manage profile")
                                    .foregroundColor(Color.gray)
                                
                            }
                            Spacer()
                            
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 30, height: 30)
                                
       
                        } .padding()
                    }
                }

                        
                        List {
                            Section{
                                NavigationLink {
                                    AddDogView(viewModel: AddDogViewModel(dog: DogModel(id: "11", name: "Santa", breed: Breed(id: 1, name: "Puli"), age: "5", pictureURL: ""), persistenceServices: UserPersistenceServices()))
                                } label: {
                                    Text("Add dog")
                                }.foregroundColor(Color.red)
                            }
                            Section {
                                
                                ForEach(viewModel.user.dogs, id: \.id) { dog in
//                                    NavigationLink(dog.name, destination: DogProfileView(viewModel: DogProfileViewModel()))
                                }.swipeActions {
                                    Button("Delete", role: .destructive) {
                                        showingDeleteAlert = true
                                    }
                                }
                                .confirmationDialog(
                                    Text("Are you sure to delete this dog?"),
                                    isPresented: $showingDeleteAlert,
                                    titleVisibility: .visible
                                ) {
                                    // I have no idea why i need to keep this, but if i delete it, xcode is not happy
                                }
                                
                                
                            }header: {
                                Text("My Dogs")
                            }
                      
                            
                        }
         //TODO: Make function to delete from VM and DB
                
                
//                func deleteItem(_ item: NSManagedObject) {
//                    viewModel.places.delete(viewModel.places, id: \.id)
//                        do {
//                            try viewModel.places.save()
//                        } catch let error {
//                            print("Error: \(error)")
//                        }
//                    }
//                }

                    Spacer()
                
            }
//            .navigationTitle()

        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(viewModel: UserProfileViewModel(user: User(id: UUID().uuidString, firstNames: "John", lastName: "Appleseed", email: "johnappleseed@apple.com", password: "", dogs: [DogModel(id: UUID().uuidString, name: "Snoopy", breed: Breed(id: 1, name: "Beagle"), age: "11", pictureURL: "")])))
    }
}


import SwiftUI

struct UserProfile: View {
    @State var viewModel: RandomViewModel
    @State private var isNavigatingToAddDog = false
    @State private var showingDeleteAlert = false
    
    
    
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

                        
                        List {
                            Section{
                                NavigationLink {
                                    AddDog()
                                } label: {
                                    Text("Add dog")
                                }.foregroundColor(Color.red)
                            }
                            Section {
                                
                                ForEach(viewModel.places, id: \.id) { place in
                                    NavigationLink(place.name, destination: DogProfile())
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
            .navigationTitle("My profile")

        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(viewModel: RandomViewModel())
    }
}

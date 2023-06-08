import SwiftUI
import CityDogEntities

struct ModifyNameView: View {

    
    init(viewModel: ModifyNameViewModel) {
        self.viewModel = viewModel
    }
    
    @State private var viewModel: ModifyNameViewModel
   
    
    var body: some View {
        NavigationStack {
            VStack {
                Section {
                    Form {
                        HStack {
                            Text("Name")

                            Spacer()

                            TextField("", text: $viewModel.user.firstName).multilineTextAlignment(.trailing)
                        }
                    
                        HStack {
                            Text("Middle name")

                            Spacer()

                            TextField("", text: $viewModel.user.lastName).multilineTextAlignment(.trailing)
                        }
                        
                    }

                }
                Spacer()
            }.navigationTitle("Name")
                            .toolbar {
                                ToolbarItem {
                                    NavigationLink {
                                        // TODO: Save in DB
                                    } label: {
                                        Text("Save")
            
                                    }.disabled(viewModel.hasUnsavedChanges)
                                }
                            }
        }
    }
}

struct ModifyName_Previews: PreviewProvider {
    static var previews: some View {
        ModifyNameView(viewModel: ModifyNameViewModel(user: UserModel.dummyUser()))
    }
}

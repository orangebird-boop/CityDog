import SwiftUI

struct ModifyName: View {
    @State var name: String
    @State var firstName: String
    @State var middleName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Section {
                    Form {
                        HStack {
                            Text("Name")

                            Spacer()

                            TextField("", text: $name).multilineTextAlignment(.trailing)
                        }
                        
                        HStack {
                            Text("First name")

                            Spacer()

                            TextField("", text: $firstName).multilineTextAlignment(.trailing)
                        }
                        HStack {
                            Text("Middle name")

                            Spacer()

                            TextField("", text: $middleName).multilineTextAlignment(.trailing)
                        }
                        
                    }

                }
                Spacer()
            }.navigationTitle("Name")
                            .toolbar {
                                ToolbarItem {
                                    NavigationLink {
                                        // destination SAVE
                                    } label: {
                                        Text("Save")
            
                                    }
                                }
                            }
        }
    }
}

struct ModifyName_Previews: PreviewProvider {
    static var previews: some View {
        ModifyName(name: "Christopher", firstName: "Schoerning", middleName: "Mark")
    }
}

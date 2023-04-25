

import SwiftUI

struct ModifyPassword: View {
    @State var email: String
    @State var oldPSW: String
    @State var newPSW: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Section {
                    Form {
                        HStack {
                            Text("email")

                            Spacer()
                            
                            TextField("", text: $email).multilineTextAlignment(.trailing)
                        }
                        
                        HStack {
                            Text("old password")

                            Spacer()
                            SecureField("", text: $oldPSW).multilineTextAlignment(.trailing)
                         
                        }
                        HStack {
                            Text("new password")

                            Spacer()

                            TextField("", text: $newPSW).multilineTextAlignment(.trailing)
                        }
                        
                    }

                }
                Spacer()
            }.navigationTitle("Security")
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

struct ModifyPassword_Previews: PreviewProvider {
    static var previews: some View {
        ModifyPassword(email: "", oldPSW: "", newPSW: "")
    }
}

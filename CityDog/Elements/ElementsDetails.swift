import SwiftUI

struct ElementsDetails: View {
    
    @State private var isNavigatingToComments = false
//    @State var viewModel: ElementsViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        Text("Lorem ipsum")
                    } header: {
                        Text("Nom")
                    }
                    
                    Section {
                        Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    } header: {
                        Text("Addresse")
                    } footer: {
                        HStack{
                            Image(systemName: "mappin.circle")
                                .font(.headline)
                                .cornerRadius(16)
                                .foregroundColor(.accentColor)
                            Text("Show on map")
                                .font(.headline)
                                .cornerRadius(16)
                                .foregroundColor(.accentColor)
                          
                        }
                    }
                    
                    Section {
                        Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    } header: {
                        Text("Description")
                    }
                    
                    Section {
                        Text("Lorem ipsum")
                    } header: {
                        Text("Bon à savoir")
                    }
                    
                    Section {
                        StarRating(rating: .constant(4))
                    } header: {
                        Text("Rating")
                    }
                    
                    Section {
                        Text("Go to comments")
                    } header: {
                        Text("Comments")
                    }
                    NavigationLink(destination: ElementsComments(), isActive: $isNavigatingToComments) {
                        EmptyView()
                        Section {
                            
                            Button(action: {
                                isNavigatingToComments = true
                            }, label: {
                                Text("Voir commentaires")
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
                        } header: {
                            Text("Comments")
                        }
                    }
                }
            }.navigationTitle("Details")
        }
            }
            
        
    }

    struct PlacesDetails_Previews: PreviewProvider {
        static var previews: some View {
            ElementsDetails()
        }
    }


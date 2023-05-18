import SwiftUI
import CityDogEntities

struct ElementsDetails: View {
    
    @State private var isNavigatingToComments = false
    @State var viewModel: ElementsDetailsViewModel

    var body: some View {
        NavigationStack {
            VStack {
                Form {
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
                        NavigationLink {
                            ElementsComments()
                        } label: {
                            Text("Go to comments")
                                .foregroundColor(.accentColor)
                        }

                    } header: {
                        Text("Comments")
                    }
                }
            }
        }
  }
}

//struct PlacesDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ElementsDetails(viewModel: DummyViewModel(element: ElementsModel(type: "", title: "Dummy", imageURL: "", id: "", adresse: "", postalCode: "", latitude: 0.1, long: 0.4, description: "", sumRating: 3)) )
//    }
//}

private struct DummyViewModel: ElementsDetailsViewModel {
    var element: CityDogEntities.ElementsModel
    
    init(element: CityDogEntities.ElementsModel) {
        self.element = element
    }
}


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
                        Text(viewModel.element.address)
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
                        Text(viewModel.element.shortDescription)
                    } header: {
                        Text("Description")
                    }

                    Section {
                        Text(viewModel.element.goodToKnow)
                    } header: {
                        Text("Bon à savoir")
                    }

                    Section {
                        StarRating(rating: .constant(4))
                    } header: {
                        Text(viewModel.element.sumRating)
                    }

                    Section {
                        NavigationLink {
                            ElementsCommentsView()
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


import SwiftUI
import CityDogEntities
import MapKit

struct ElementsDetailsView: View {
    
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
                            Button(action: {
                                print("button clicked")
                                openMaps()
                            }, label: {
                                Text("Show on map")
                                    .font(.headline)
                                    .cornerRadius(16)
                                    .foregroundColor(.accentColor)
                                
                                
                                //                            Text("Show on map")
                                //                                .font(.headline)
                                //                                .cornerRadius(16)
                                //                                .foregroundColor(.accentColor)
                                
                            }
                            )
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
                            ElementsCommentsView(viewModel: ElementsCommentsViewModel())
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
    
    func openMaps() {
        guard let latitudeDouble = Double(viewModel.element.latitude),
              let longitudeDouble = Double(viewModel.element.longitude) else {
               print("Invalid latitude or longitude format")
               return
           }
           
           let coordinates = CLLocationCoordinate2D(latitude: latitudeDouble, longitude: longitudeDouble)
           let placemark = MKPlacemark(coordinate: coordinates)
           let mapItem = MKMapItem(placemark: placemark)
        MKMapItem.openMaps(with: [MKMapItem(placemark: placemark)], launchOptions: nil)
      }
    
}

private struct DummyViewModel: ElementsDetailsViewModel {
    var element: CityDogEntities.ElementsModel
    
    init(element: CityDogEntities.ElementsModel) {
        self.element = element
    }
}


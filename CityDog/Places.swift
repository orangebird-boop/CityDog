import SwiftUI



struct Places: View {
    
    @State var viewModel: RestaurantsAndBarsViewModel

    
    var body: some View {
        NavigationStack {
          
            List {
                ForEach(viewModel.places, id: \.id) { place in
                        NavigationLink(place.name, destination: PlacesDetails())
                    }
                }.navigationTitle(viewModel.title)
            }

        
    }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Places(viewModel: RestaurantsAndBarsViewModel())
    }
}




import SwiftUI



struct Elements: View {
    
    @State var viewModel: RestaurantsAndBarsViewModel

    
    var body: some View {
        NavigationStack {
          
            List {
                ForEach(viewModel.places, id: \.id) { place in
                        NavigationLink(place.name, destination: ElementsDetails())
                    }
                }.navigationTitle(viewModel.title)
            }

        
    }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Elements(viewModel: RestaurantsAndBarsViewModel())
    }
}




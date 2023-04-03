import SwiftUI



struct Elements: View {
    
    @State var viewModel: ElementsViewModel
    
    var body: some View {
        
        
        List {
            ForEach(viewModel.elements, id: \.id) { place in
                NavigationLink(place.title, destination: ElementsDetails())
            }
        }.navigationTitle(viewModel.title)
    }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Elements(viewModel: RestaurantsBarsViewModel())
    }
}




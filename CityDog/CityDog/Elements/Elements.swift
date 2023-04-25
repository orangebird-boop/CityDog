import SwiftUI



struct Elements: View {
    
    @State var viewModel: ElementsViewModel
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.elements, id: \.id) { element in
                    NavigationLink(element.title, destination: ElementsDetails(viewModel: DefaultElementDetailsViewModel(element: element)))
                }
            }.navigationTitle(viewModel.title)
        }
    }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Elements(viewModel: RestaurantsBarsViewModel())
    }
}




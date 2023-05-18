import SwiftUI



struct Elements: View {
    
    @State var viewModel: ElementsViewModel
    
    
    var body: some View {
       
        NavigationStack {
            List {
                ForEach(viewModel.getElements(), id: \.id) { element in
                    NavigationLink(element.name, destination: ElementsDetails(viewModel: DefaultElementDetailsViewModel(element: element)))
                }
          } //.navigationTitle(viewModel)
        }
    }
}

//struct Lieux_Previews: PreviewProvider {
//    static var previews: some View {
//        Elements(viewModel: RestaurantsBarsViewModel())
//    }
//}




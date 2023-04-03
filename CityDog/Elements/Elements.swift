import SwiftUI



struct Elements: View {
    
    @State var viewModel: RandomViewModel
    
    
    var body: some View {
        
        
        List {
            ForEach(viewModel.places, id: \.id) { place in
                NavigationLink(place.name, destination: ElementsDetails())
            }
        }.navigationTitle(viewModel.title)
    }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Elements(viewModel: RandomViewModel())
    }
}




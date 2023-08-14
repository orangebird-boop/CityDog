
import SwiftUI

struct DogImageView: View {
    @StateObject private var viewModel = DogImageViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.catImages, id: \.id) { catImage in
                if let url = URL(string: catImage.url) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
            .navigationBarTitle("Cat Images")
            .onAppear {
                viewModel.fetchCatImages()
            }
        }
    }
}

struct DogImageView_Previews: PreviewProvider {
    static var previews: some View {
        DogImageView()
    }
}

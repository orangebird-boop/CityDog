import Foundation

class DogImageViewModel: ObservableObject {
    @Published var catImages: [CatImage] = []
    
    func fetchCatImages() {
        guard let url = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let catImageResponse = try decoder.decode([CatImage].self, from: data)
                
                DispatchQueue.main.async {
                    self.catImages = catImageResponse
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}

struct CatImage: Codable, Identifiable {
    let id: String
    let url: String
}

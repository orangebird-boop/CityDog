import Foundation

class ShopsViewModel: ElementsViewModel {
    let title = "Shops"
    private (set) var elements: [ElementsModel] = []
    
    init() {
        refreshElements()
    }
    
    func refreshElements() {
        // TODO: Fetch from DB
        elements = [
        ElementsModel(type: "Shop", title: "All for your pet", imageURL: "", id: "1", adresse:  "57 rue de la Revolution", postalCode: "93100", latitude: 48.85354317054084, long: 2.428509121061213, goodToKnow: [], description: "iuhemiuchfiuehciufhlcurf", phoneNumber: "0648856001", sumRating: 4, comments: Comments(title: "ok", text: "more than ok", rating: 4))
    
        ]
    }
}

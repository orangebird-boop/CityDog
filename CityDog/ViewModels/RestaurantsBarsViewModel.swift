import Foundation

class RestaurantsBarsViewModel: ElementsViewModel {
    let title = "Restaurants / Bars"
    private (set) var elements: [DisplayElementDetails] = []
    
    init() {
        refreshElements()
    }
    
    func refreshElements() {
        // TODO: Fetch from DB
        elements = [
        DisplayElementDetails(title: "Bar 1", imageURL: "", id: "1"),
        DisplayElementDetails(title: "Bar 2", imageURL: "", id: "2"),
        DisplayElementDetails(title: "Bar 3", imageURL: "", id: "3"),
        DisplayElementDetails(title: "Bar 4", imageURL: "", id: "4"),
        DisplayElementDetails(title: "Bar 5", imageURL: "", id: "5"),
    
        ]
    }
}

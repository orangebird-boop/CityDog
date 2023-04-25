import SwiftUI


struct Place {
    let id: String
    let name: String
    let imageURL: String
}
   
    
    struct RandomViewModel {
        let title = "Restaurants and Bars"
        let places = [
            Place(id: "1", name: "name1", imageURL: "Chris"),
            Place(id: "2", name: "name2", imageURL: ""),
            Place(id: "3", name: "name3", imageURL: ""),
            Place(id: "4", name: "name4", imageURL: ""),
        ]
    }


import Foundation

struct DisplayElementDetails {
    let title: String
    let imageURL: String
    let id: String
}

protocol ElementsViewModel {
    var title: String { get }
    var elements: [DisplayElementDetails] { get }
    
    func refreshElements()
}

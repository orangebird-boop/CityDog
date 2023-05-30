import SwiftUI
import CityDogEntities

struct ElementsCommentsView: View {
    @State private var isNavigatingToAddComments = false
    @State var viewModel: ElementsCommentsViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
               
                List {
                    Section {
                        NavigationLink {
                            ElementsAddCommentsView(viewModel: ElementsAddCommentViewModel())
                        } label: {
                            Text("Add comment")
                        }.foregroundColor(.accentColor)
                        
                    }
                    ForEach(2..<6) {_ in
                        Section {
                            VStack {
                                // This is only bringing back the first one ! ! !
                                Text(viewModel.element.comments.first!.title)
                                    
                                
                                Text(viewModel.element.comments.first!.message)
                                    .padding()
                                
                                
                                
                                Section {
                                    
                                    StarRating(rating: .constant(4))
                                    
                                }
                            }
                        }
                    }
                }
            }.navigationTitle("Comments")
        }
    }
}

//struct PlacesComments_Previews: PreviewProvider {
//    static var previews: some View {
//        ElementsCommentsView()
//    }
//}

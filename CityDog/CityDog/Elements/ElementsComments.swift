

import SwiftUI

struct ElementsComments: View {
    @State private var isNavigatingToAddComments = false
    
    var body: some View {
        NavigationStack {
            VStack {
               
                List {
                    Section {
                        NavigationLink {
                            ElementsAddComments()
                        } label: {
                            Text("Add comment")
                        }.foregroundColor(.accentColor)
                        
                    }
                    ForEach(2..<6) {_ in
                        Section {
                            VStack {
                                Text("Title")
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum sapien metus, vitae fringilla augue blandit sit amet. Aenean molestie at mauris id feugiat. Integer hendrerit non ligula a accumsan. Suspendisse metus ante, convallis ac auctor vel, rhoncus eget elit. Nunc quis elit quis magna convallis condimentum vel in tellus. Sed euismod tellus id nisi placerat, a placerat dolor dapibus. Quisque laoreet, diam eu sagittis bibendum, nisi diam molestie nunc, accumsan mollis dui orci quis nulla. Morbi nunc lorem, pharetra vel porta eu, ullamcorper sed metus. Mauris fringilla justo fermentum pretium ultricies. ")
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

struct PlacesComments_Previews: PreviewProvider {
    static var previews: some View {
        ElementsComments()
    }
}

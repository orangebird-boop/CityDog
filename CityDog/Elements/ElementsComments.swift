

import SwiftUI

struct ElementsComments: View {
    @State private var isNavigatingToAddComments = false
    
    var body: some View {
      
            VStack {
                List {
                    ForEach(2..<6) {_ in
                        VStack {
                            Text("Title")
                            
                            HStack {
                                Text("bar1")
                                    .padding()
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum sapien metus, vitae fringilla augue blandit sit amet. Aenean molestie at mauris id feugiat. Integer hendrerit non ligula a accumsan. Suspendisse metus ante, convallis ac auctor vel, rhoncus eget elit. Nunc quis elit quis magna convallis condimentum vel in tellus. Sed euismod tellus id nisi placerat, a placerat dolor dapibus. Quisque laoreet, diam eu sagittis bibendum, nisi diam molestie nunc, accumsan mollis dui orci quis nulla. Morbi nunc lorem, pharetra vel porta eu, ullamcorper sed metus. Mauris fringilla justo fermentum pretium ultricies. ")
                                    .padding()
                                
                            }
                            Section {
                                
                                StarRating(rating: .constant(4))
                                
                            }
                        }
                    }
                }
                NavigationLink(destination: ElementsAddComments(), isActive: $isNavigatingToAddComments) {
                    EmptyView()
                }
                Button(action: {
                    isNavigatingToAddComments = true
                }, label: {
                    Text("add comment")
                        .fontWeight(.heavy)
                        .font(.system(size: 23.0))
                        .padding(16.0)
                        .frame(width: 337.0)
                        .foregroundColor(Color.white)
                        .background(
                            Color(hue: 0.401, saturation: 1, brightness: 1)
                                .cornerRadius(16.0)
                        )
                })
            }.navigationTitle("Comments")
        }
}

struct PlacesComments_Previews: PreviewProvider {
    static var previews: some View {
        ElementsComments()
    }
}

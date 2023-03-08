

import SwiftUI

struct PlacesComments: View {
    var body: some View {
        VStack {
            List {
                ForEach(2..<6) {_ in
                    VStack {
                        Text("Title")
                        
                        HStack {
                            Text("bar1")
                                .padding()
                            Text("should be an image")
                                .padding()
                            
                        }
                        Section {
                            
                            StarRating(rating: .constant(4))
                            
                        }
                    }
                }
            }
            
            Button(action: {
                // TODO: Specify action
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
        }
    }
}

struct PlacesComments_Previews: PreviewProvider {
    static var previews: some View {
        PlacesComments()
    }
}

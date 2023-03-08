import SwiftUI

struct PlacesDetails: View {
    
    var body: some View {
        VStack {
            List {
                
                HStack {
                    Text("Nom")
                        .padding()
                    Text("Lorem ipsum")
                        .padding()
                }
                HStack {
                    Text("Addresse")
                        .padding()
                    Text("dolor sit amet, consectetur adipiscing elit")
                        .padding()
                }
                HStack {
                    Text("Description")
                        .padding()
                    Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                        .padding()
                }
                
                HStack {
                    Text("Bon à savoir")
                        .padding()
                    Text("should be icons")
                        .padding()
                }
                Section {
                    
                    StarRating(rating: .constant(4))
                    
                }.padding()
            }
            
         
            Button(action: {
                // TODO: Specify action
            }, label: {
                Text("Voir sur la carte")
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

struct PlacesDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlacesDetails()
    }
}

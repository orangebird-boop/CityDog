import SwiftUI

struct AddComments: View {
    var body: some View {
        VStack {
            List {
                
                HStack {
                    Text("Title")
                        .padding()
                    Text("Lorem ipsum")
                        .padding()
                }
                HStack {
                    Text("Message")
                        .padding()
                    Text("Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                        .padding()
                }
                HStack {
                    Text("Satisfaction")
                        .padding()
                    Section {
                        
                        StarRating(rating: .constant(4))
                        
                    }
                }
                Spacer()
                
              
            
         
            Button(action: {
                // TODO: Specify action
            }, label: {
                Text("Valider")
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
}

struct AddComments_Previews: PreviewProvider {
    static var previews: some View {
        AddComments()
    }
}

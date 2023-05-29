import SwiftUI

struct ElementsAddCommentsView: View {
    @State private var profileText = "Enter your comment. You can specify a minimum width for each Spacer, or let it squish all the way to zero if the adjacent content needs all the space."
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    
                    HStack {
                        Text("Title")
                        
                        Spacer()
                        Text("Lorem ipsum")
                        
                    }
                    HStack {
                        Text("Message")
                            .padding()
                        Spacer()
                        // entering multiline text
                        TextEditor(text: $profileText)
                            .scaledToFill()
                            .padding()
                        
                    }
                    HStack {
                        Text("Satisfaction")
                        
                        Spacer()
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
            }.navigationTitle("Add Comments")
        }
        }

}

struct AddComments_Previews: PreviewProvider {
    static var previews: some View {
        ElementsAddCommentsView()
    }
}

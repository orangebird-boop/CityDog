import SwiftUI

struct DogProfile: View {
    var body: some View {
        Form {
        HStack {
            
            Image("lenny")
                .resizable()
                .scaledToFit()
                .clipShape(Rectangle())
                .padding()
            VStack(alignment: .leading){
                    Text("Lenny")
                        .fontWeight(.heavy)
                        .padding()
                        .foregroundColor(Color.black)
                    Text("age : 11")
                        .padding()
                        .foregroundColor(Color.black)
                    Text("race : fox terrier")
                        .padding()
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct DogProfile_Previews: PreviewProvider {
    static var previews: some View {
        DogProfile()
    }
}

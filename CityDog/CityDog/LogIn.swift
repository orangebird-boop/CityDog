import SwiftUI

struct LogIn: View {
    var body: some View {
       ZStack {
         Color.clear.background()
         .edgesIgnoringSafeArea(.all)
           
         VStack(alignment: .center, spacing: 10.0) {
             
           Spacer()
             
           TextField("mail", text: .constant("")) // TODO: Update binding
             .font(.system(size: 18.0))
             .padding(8.0)
             .foregroundColor(Color.black)
             .background(
               Color.gray
                 .cornerRadius(8.0)
                 .opacity(0.36)
             )
             
           TextField("mdp", text: .constant("")) // TODO: Update binding
             .font(.system(size: 18.0))
             .padding(8.0)
             .foregroundColor(Color.black)
             .background(
               Color.gray
                 .cornerRadius(9.0)
                 .opacity(0.34)
             )
           Spacer()
           Text("créer un compte")
             .fontWeight(.regular)
             .font(.system(size: 18.0))
             .foregroundColor(Color.black)
             
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
                       Color(hue: 0.373, saturation: 1, brightness: 1)
                           .cornerRadius(11.0)
                   )
                   .shadow(radius: 2.0)
           })
           Spacer()
         }
           .padding(114.0)
       }
     }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}

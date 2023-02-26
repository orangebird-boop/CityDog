import SwiftUI

struct LaunchScreen: View {
    var body: some View {
      ZStack {
        Color.clear.background(
          Color.gray
            .opacity(0.00)
        )
        .edgesIgnoringSafeArea(.all)
        VStack(alignment: .center, spacing: 0.0) {
          Image("logo-1")
            .resizable()
            .scaledToFit()
            .padding(20.0)
          Spacer()
            .frame(height: 43.0)
          Text("City Dog")
            .bold()
            .fontWeight(.bold)
            .font(.system(size: 42.0))
            .foregroundColor(Color.black)
        }
          .padding(20.0)
      }
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}

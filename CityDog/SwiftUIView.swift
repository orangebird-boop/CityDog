
//    var icons2 = ["cross.fill", "pawprint.fill", "basket", "fork.knife"]

    import SwiftUI


    struct MainMenu: View {

      var body: some View {
        ZStack {
          Color.clear.background(
            Color(hue: 0.168, saturation: 1, brightness: 1)
              .opacity(0.48)
          )
          .edgesIgnoringSafeArea(.all)
          VStack(alignment: .center, spacing: 0.0) {
            Spacer()
            HStack(alignment: .center, spacing: 0.0) {
              VStack(alignment: .center, spacing: 0.0) {
                HStack(alignment: .center, spacing: 0.0) {
                  Image(systemName: "cross.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.black)
                    .padding(6.0)
                    .frame(width: 169.0, height: 168.0)
                    .background(
                      Color(hue: 0.282, saturation: 1, brightness: 1)
                        .cornerRadius(31.0)
                    )
                  Spacer()
                    .frame(width: 8.0)
                }
                Spacer()
                  .frame(height: 8.0)
                Text("Text")
                  .bold()
                  .fontWeight(.heavy)
                  .font(.system(size: 28.0))
                  .foregroundColor(Color.black)
                Spacer()
                  .frame(height: 8.0)
                HStack(alignment: .center, spacing: 0.0) {
                  Image(systemName: "pawprint.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.black)
                    .padding(6.0)
                    .frame(width: 168.0, height: 168.0)
                    .background(
                      Color(hue: 0.554, saturation: 1, brightness: 1)
                        .cornerRadius(31.0)
                    )
                  Spacer()
                    .frame(width: 8.0)
                }
                Spacer()
                  .frame(height: 8.0)
                Text("Text")
                  .fontWeight(.heavy)
                  .font(.system(size: 28.0))
                  .foregroundColor(Color.black)
                Spacer()
                  .frame(height: 8.0)
              }
                .padding(4.0)
              VStack(alignment: .center, spacing: 0.0) {
                Image(systemName: "basket")
                  .resizable()
                  .scaledToFit()
                  .foregroundColor(Color.black)
                  .padding(6.0)
                  .frame(width: 168.0, height: 168.0)
                  .background(
                    Color(hue: 0.049, saturation: 1, brightness: 1)
                      .cornerRadius(31.0)
                  )
                Spacer()
                  .frame(height: 8.0)
                Text("Text")
                  .bold()
                  .fontWeight(.heavy)
                  .font(.system(size: 28.0))
                  .foregroundColor(Color.black)
                Spacer()
                  .frame(height: 8.0)
                Image(systemName: "fork.knife")
                  .resizable()
                  .scaledToFit()
                  .foregroundColor(Color.black)
                  .padding(6.0)
                  .frame(width: 168.0, height: 168.0)
                  .background(
                    Color(hue: 0.105, saturation: 1, brightness: 1)
                      .cornerRadius(31.0)
                  )
                Spacer()
                  .frame(height: 8.0)
                Text("Text")
                  .fontWeight(.heavy)
                  .font(.system(size: 28.0))
                  .foregroundColor(Color.black)
                Spacer()
                  .frame(height: 8.0)
              }
            }
            Spacer()
            Button(action: {
              // TODO: Specify action
            }, label: {
              Text("Button")
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
              .frame(height: 16.0)
          }
        }
      }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

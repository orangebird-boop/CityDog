
import SwiftUI
import CityDogEntities

struct MainView: View {
    var body: some View {
        TabView {
            MainMenu()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
           DogImageView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

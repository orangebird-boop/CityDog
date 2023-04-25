
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MainMenu()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            UserProfile(viewModel: RandomViewModel())
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

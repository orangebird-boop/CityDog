
import SwiftUI
import CityDogEntities

struct MainView: View {
    var viewModel: UserProfileViewModel
//     var service: UserDataService
    @State private var userLoaded = false
    
    var body: some View {
        TabView {
            MainMenu()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            // TODO: Replace this by real data from DB
            UserProfileView(viewModel: UserProfileViewModel())
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        .onAppear {
            if !userLoaded {
                UserDataService.shared.loadUserFromJSON()
                userLoaded = true
            }
        }
    }
}

//struct MainView: View {
//    var viewModel: UserProfileViewModel
//    var body: some View {
//        TabView {
//            MainMenu()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            // TODO: Replace this by real data from DB
//            UserProfileView(viewModel: UserProfileViewModel())
//                .tabItem {
//                    Label("Profile", systemImage: "person.circle")
//                }
//        }
//    }
//}

//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView(viewModel: UserProfileViewModel( user: UserModel))
//    }
//}

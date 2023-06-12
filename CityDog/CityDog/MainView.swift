
import SwiftUI
import CityDogEntities
@main



struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let userDataService = UserDataService()
            let userModel = UserModel(id: "", firstName: "", lastName: "", email: "", password: "", dogs: [])
            MainView(viewModel: UserProfileViewModel())
                .environmentObject(userModel)
            
        }
    }
}

struct MainView: View {
    var viewModel: UserProfileViewModel
//     var service: UserDataService
    @State private var userLoaded = false
    @EnvironmentObject var userData: UserModel
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


public class AppDelegate: NSObject, UIApplicationDelegate {
    var userService = UserDataService()
    
    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        userService.loadUserFromJSON()
        return true
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

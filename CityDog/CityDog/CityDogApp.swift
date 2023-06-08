import SwiftUI

@main
struct CityDogApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: UserProfileViewModel())
        }
    }
}

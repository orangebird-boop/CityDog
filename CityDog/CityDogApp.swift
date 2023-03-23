import SwiftUI

@main
struct CityDogApp: App {
    var body: some Scene {
        WindowGroup {
//            LaunchScreen()
//            MainMenu()
//            AddDog()
            Elements(viewModel: RestaurantsAndBarsViewModel())
        }
    }
}

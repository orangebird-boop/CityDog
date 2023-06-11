import Foundation
import CoreData


public class UserDataService {
    static public let shared = UserDataService()
    
    public init() {}
    
    public func loadUserFromJSON() {
        guard let path = Bundle.main.path(forResource: "dummyUser", ofType: "json") else {
            print("Failed to find user.json file")
            return
        }
        
        do {
            let url = URL(fileURLWithPath: path)
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601 // Adjust the date decoding strategy if needed
            let user = try decoder.decode(UserModel.self, from: data)
            
            saveUserToCoreData(user: user)
        } catch {
            print("Failed to load user from JSON: \(error)")
        }
    }
    
    private func saveUserToCoreData(user: UserModel) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        // Check if the user already exists in Core Data
        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", user.id)
        
        do {
            let matchingUsers = try context.fetch(fetchRequest)
            let currentUserEntity: UserEntity
            
            if let existingUserEntity = matchingUsers.first {
                // Update the existing user entity
                currentUserEntity = existingUserEntity
            } else {
                // Create a new user entity
                currentUserEntity = UserEntity(context: context)
                currentUserEntity.id = user.id
            }
            
            currentUserEntity.firstName = user.firstName
            currentUserEntity.lastName = user.lastName
            currentUserEntity.email = user.email
            currentUserEntity.password = user.password
            
            // Remove any existing dogs for the user
            if let existingDogs = currentUserEntity.dogs as? Set<DogEntity> {
                currentUserEntity.removeFromDogs(existingDogs)
            }
            
            // Add the dogs to the user entity
            for dog in user.dogs {
                let dogEntity = DogEntity(context: context)
                dogEntity.id = dog.id
                dogEntity.name = dog.name
                dogEntity.age = dog.age
                
                let breedEntity = BreedEntity(context: context)
                breedEntity.id = Int16(dog.breed.id)
                breedEntity.name = dog.breed.name
                
                dogEntity.breed = breedEntity
                currentUserEntity.addToDogs(dogEntity)
            }
            
            // Save the changes
            try context.save()
            
            print("User saved to Core Data")
        } catch {
            print("Failed to save user to Core Data: \(error)")
        }
    }
}

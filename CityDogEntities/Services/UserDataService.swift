import Foundation
import UIKit
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

        var container: NSPersistentContainer = {
           let container = NSPersistentContainer(name: "Entities")
           
           container.loadPersistentStores { _, error in
               if let error {
                   dump(error)
               }
           }
           return container
       }()
        var context: NSManagedObjectContext = {
           container.viewContext
       }()
        
        // Check if the user already exists in Core Data
        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "id == %@", user.id)
        
        do {
            let matchingUsers = try context.fetch(fetchRequest)
            let currentUserEntity: UserEntity
            
            if !matchingUsers.isEmpty {
                // Update the existing user entity
                guard matchingUsers.first != nil else {
                            fatalError("Fetching user was unsuccessful")
                        }
            } else {
                // Create a new user entity
                currentUserEntity = UserEntity(context: context)
                currentUserEntity.id = user.id
            }
            
            currentUserEntity.firstName = user.firstName
            currentUserEntity.lastName = user.lastName
            currentUserEntity.email = user.email
            currentUserEntity.password = user.password
            
//            // Remove any existing dogs for the user
//            if let existingDogs = currentUserEntity.dogs as? Set<DogEntity> {
//                currentUserEntity.removeDogs(existingDogs)
//            }
            
            // Add the dogs to the user entity
            for dog in user.dogs {
                let dogEntity = DogEntity(context: context)
                dogEntity.id = dog.id
                dogEntity.name = dog.name
                dogEntity.age = dog.age
                
                
                dogEntity.breed = dog.breed.name
            
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

import Foundation
import CoreData

public class UserPersistenceServices {
    
    static var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Entities")
        
        container.loadPersistentStores { _, error in
            if let error {
                dump(error)
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext = {
        container.viewContext
    }()
    
    public init() {}
    
    func fetchUser() {
        
    }
    
    func fetchDogs(for user: User) {
  
    }
    
    func add(dog: DogModel, to user: User) {
        
        // fetching user
        let request: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", user.id)
        
        do {
            let matchingUsers = try Self.context.fetch(request)
            
            guard let currentUserEntity = matchingUsers.first else {
                fatalError("fetching user was unsuccessful")
            }
            guard let dogEntityDescription = NSEntityDescription.entity(forEntityName: "DogEntity", in: Self.context) else {
                fatalError("fetching dogs was unsuccessful")
            }
            
            let dogEntity = DogEntity(entity: dogEntityDescription, insertInto: Self.context)
            dogEntity.name = dog.name
            dogEntity.age = dog.age
            dogEntity.id = dog.id
            dogEntity.breed = dog.breed.name
            dogEntity.image = dog.pictureURL
            
            currentUserEntity.addToDogs(dogEntity)
            
            // save
            try Self.context.save()
            
        } catch {
            
        }
        
    }
    
    public func fetchComment(for elementId: String) ->[Comment] {
        
        let request: NSFetchRequest<CommentEntity> = CommentEntity.fetchRequest()
        request.predicate = NSPredicate(format: "elementId == %@", elementId)
        // do catch
        return []
    }
    
    public func add(comment: Comment, to : ElementsModel) {
       
        
        do {
         
            guard let commentEntityDescription = NSEntityDescription.entity(forEntityName: "CommentEntity", in: Self.context) else {
                fatalError("Creating comment entity")
            }
            let commentEntity = CommentEntity(entity: commentEntityDescription, insertInto: Self.context)
            commentEntity.elementId = comment.elementId
            commentEntity.message = comment.message
            commentEntity.title = comment.title
            commentEntity.rating = comment.rating
            
        
            // save
            try Self.context.save()
            
        } catch {
            
        }
        
    }
}

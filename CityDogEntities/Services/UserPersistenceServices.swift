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
    
    func createUser(firstName: String, lastName: String, email: String, password: String, id: String) {
        do {
            guard let userEntityDescription = NSEntityDescription.entity(forEntityName: "DogEntity", in: Self.context) else {
                fatalError("fetching dogs was unsuccessful")
            }
            
            let userEntity = UserEntity(entity: userEntityDescription, insertInto: Self.context)
            userEntity.firstName = firstName
            userEntity.lastName = lastName
            userEntity.email = email
            userEntity.password = password
            userEntity.id = id
            
            try Self.context.save()
            
        } catch {
            print(error)
        }
    }
    
    func fetchUser() -> UserEntity? {
        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        
        
        do {
            let results = try UserPersistenceServices.context.fetch(fetchRequest)
            return results.first
        } catch {
            print("Error fetching user: \(error)")
            return nil
        }
    }
    
    public func fetchDog(for user: UserModel) throws -> [DogModel] {
        let request: NSFetchRequest<DogEntity> = DogEntity.fetchRequest()
        request.predicate = NSPredicate(format: "userId == %@", user.id)
        
        do {
            let fetchedDogEntities = try Self.context.fetch(request)
            
            let dogs =  user.dogs
            return dogs
        } catch {
            throw error
        }
    }
    
   
    
    
    public func add(dog: DogModel, to user: UserModel) {
        
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
            print(error)
        }
        
    }
    

    
    public func fetchComment(for elementId: String) throws -> [ElementsModel.Comment] {
        let request: NSFetchRequest<CommentEntity> = CommentEntity.fetchRequest()
        request.predicate = NSPredicate(format: "elementId == %@", elementId)
        
        do {
            let fetchedCommentEntities = try Self.context.fetch(request)
            
            let comments =  try fetchedCommentEntities.compactMap { try ElementsModel.Comment(from: $0 as! Decoder) }
            return comments
        } catch {
            throw error
        }
    }
    
    public func add(comment: ElementsModel.Comment, to : ElementsModel) {
       
        
        do {
         
            guard let commentEntityDescription = NSEntityDescription.entity(forEntityName: "CommentEntity", in: Self.context) else {
                fatalError("Creating comment entity was unsuccessful")
            }
            let commentEntity = CommentEntity(entity: commentEntityDescription, insertInto: Self.context)
            commentEntity.elementId = comment.elementId
            commentEntity.message = comment.message
            commentEntity.title = comment.title
            commentEntity.rating = comment.rating
            
        
            // save
            try Self.context.save()
            
        } catch {
            print(error)
        }
        
    }
}

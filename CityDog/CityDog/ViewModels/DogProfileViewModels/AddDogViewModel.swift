import CoreData
import Foundation
import CityDogEntities

struct AddDogViewModel {
    
    
    var service = DogService(filesService: FilesService())
    var dog: DogModel
    
    private let persistenceServices: UserPersistenceServices
    
    
    
    let dogBreeds: [Breed]
    public init(service: DogService = DogService(filesService: FilesService()), dog: DogModel, persistenceServices: UserPersistenceServices) {
        self.service = service
        self.dog = dog
        self.persistenceServices = persistenceServices
        var availableDogBreeds = [Breed(id: -1, name: "None")]
        availableDogBreeds.append(contentsOf: service.retrieveDogBreeds())
        
        dogBreeds = availableDogBreeds
        
    }
    
    func getBreeds() -> [Breed] {
        var dogBreeds: [Breed] = {
            return service.retrieveDogBreeds()
        }()
        return dogBreeds
    }
    
    
    func saveDog(dog: DogModel, for user: UserModel) {
        persistenceServices.add(dog: dog, to: user)
    }
    
    
}


import Foundation
import CityDogEntities

struct AddDogViewModel {
   
    
    var service = DefaultsService(filesService: FilesService())
    var dog: DogModel

    
    public init(service: DefaultsService = DefaultsService(filesService: FilesService()), dog: DogModel) {
        self.service = service
        self.dog = dog

    }
    
    func getBreeds() -> [Breed] {
        var dogBreeds: [Breed] = {
            return service.retrieveDogBreeds()
        }()
        return dogBreeds
    }

        
  

    
}

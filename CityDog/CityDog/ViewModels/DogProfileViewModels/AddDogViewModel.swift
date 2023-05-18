
import Foundation
import CityDogEntities

struct AddDogViewModel {
   
    
    var service = DogService(filesService: FilesService())
    var dog: DogModel

    
    public init(service: DogService = DogService(filesService: FilesService()), dog: DogModel) {
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

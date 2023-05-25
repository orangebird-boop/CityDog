
import Foundation
import CityDogEntities

struct AddDogViewModel {
   
    
    var service = DogService(filesService: FilesService())
    var dog: DogModel

    let dogBreeds: [Breed]
    public init(service: DogService = DogService(filesService: FilesService()), dog: DogModel) {
        self.service = service
        self.dog = dog
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

}

import Foundation

public struct DogService {
    private let filesService: FilesService
    
    public init(filesService: FilesService) {
        self.filesService = filesService
    }
    
    public func retrieveDogBreeds() -> [Breed] {
        guard let rawDogBreeds =  filesService.retrieve(file: "dogBreeds", with: "json", from: Bundle.main) else {
            return []
        }
        
        guard let dogBreeds = try? JSONDecoder().decode([Breed].self, from: rawDogBreeds) else {
            return []
        }
        
        return dogBreeds
    }
}

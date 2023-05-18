import Foundation

public struct ElementsService {
    private let filesService: FilesService
    
    public init(filesService: FilesService) {
        self.filesService = filesService
    }
    
    public func retrieveElement() -> [ElementsModel] {
        guard let rawElement =  filesService.retrieve(file: "elements", with: "json", from: Bundle.main) else {
            return []
        }
        
        guard let element = try? JSONDecoder().decode([ElementsModel].self, from: rawElement) else {
            return []
        }
        
        return element
    }
}

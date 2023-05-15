
import Foundation

public struct FilesService {
    
    public init () {
        
    }
    
    public func retrieve(file: String, with fileNameExtention: String, from bundle: Bundle) -> Data?  {
       guard let fileURL = bundle.url(forResource: file, withExtension: fileNameExtention) else {
            return nil
        }
        
        do {
            return try Data(contentsOf: fileURL)
        } catch {
            return nil
        }
    }
}

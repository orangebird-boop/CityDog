//import Foundation
//
//
//class EdamamSearchService: SearchService {
//
//    
//    
//
//    typealias ServiceResponse =
//
//    private var networkService: NetworkManager
//    
//    init(networkService: NetworkManager = .init()) {
//        self.networkService = networkService
//    }
//    
//    let path = "https://api.thecatapi.com/v1/images/search?limit=10"
//
//    
//    func buildUrl() -> String? {
//            var urlComponents = URLComponents(string: path)
//        
//
//            
//            return urlComponents?.url?.absoluteString
//        }
//    
//    func getRecipes(nextSet: String, completionHandler: @escaping (Result<RecipeResponse, SearchServiceError>) -> Void) {
//        guard let url = URL(string: nextSet) else {
//            completionHandler(.failure(.invalidURL))
//            return
//        }
//        
//        networkService.get(request: URLRequest(url: url)) { (result: Result<EdamamResponse, Error>) in
//            switch result {
//            case .success(let response):
//                // Model transformation
//                let recipeResponse = response.toGenericModel()
//                
//                completionHandler(.success(recipeResponse))
//                
//            case .failure(let error):
//                completionHandler(.failure(self.handle(error: error)))
//            }
//        }
//    }
//    
//    func getRecipes(ingredients: [String], completionHandler: @escaping (Result<RecipeResponse, SearchServiceError>) -> Void) {
//        guard let rawURL = buildUrl(for: ingredients), let url = URL(string: rawURL) else {
//            completionHandler(.failure(.invalidURL))
//            return
//        }
//        
//        networkService.get(request: URLRequest(url: url)) { (result: Result<EdamamResponse, Error>) in
//            switch result {
//            case .success(let response):
//                // Model transformation
//                let recipeResponse = response.toGenericModel()
//                
//                
//                completionHandler(.success(recipeResponse))
//                
//            case .failure(let error):
//                completionHandler(.failure(self.handle(error: error)))
//            }
//        }
//    }
//    
//    func handle(error: Error) -> SearchServiceError {
//        guard let networkError = error as? NetworkManagerError else {
//            return .networkError
//        }
//    
//        switch networkError {
//        case .invalidURL:
//            return.invalidURL
//        case .emptyData, .failedToDeserialize:
//            return .invalidData
//        case .redirection, .httpClientError, .serverError, .unknown:
//            return .networkError
//        }
//    }
//}

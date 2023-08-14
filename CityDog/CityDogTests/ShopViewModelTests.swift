//import XCTest
//@testable import CityDog
//@testable import CityDogEntities
//
//class ShopsViewModelTests: XCTestCase {
//
//    var viewModel: ShopsViewModel!
//    var stubService: StubElementsService!
//
//    override func setUpWithError() throws {
//        stubService = StubElementsService()
//        viewModel = ShopsViewModel(service: ElementsService.init())
//    }
//
//    override func tearDownWithError() throws {
//        viewModel = nil
//        stubService = nil
//    }
//
//    func testTitle() {
//        XCTAssertEqual(viewModel.title, "Shops")
//    }
//
//    func testGetElements() {
//        let mockElements: [ElementsModel] = [
//            ElementsModel(name: "Chiens Chats et les Autres" as! Decoder),
//
//        ]
//        stubService.stubRetrieveElementResult = mockElements
//
//        let filteredElements = viewModel.getElements()
//
//        XCTAssertEqual(filteredElements.count, 2)
//        XCTAssertEqual(filteredElements.first?.name, "Pet Store")
//    }
//}
//
//
//class StubElementsService: ElementsService {
//    var stubRetrieveElementResult: [ElementsModel] = []
//
//    override func retrieveElement() -> [ElementsModel] {
//        return stubRetrieveElementResult
//    }
//}

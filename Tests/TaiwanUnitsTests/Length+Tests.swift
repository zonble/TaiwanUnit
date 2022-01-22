@testable import TaiwanUnits
import XCTest

class Length_Tests: XCTestCase {
    func test鄉民_equals_30公分() throws {
        XCTAssertEqual(
            Measurement(value: 1, unit: 長度單位.鄉民),
            Measurement(value: 30, unit: 長度單位.公分))
    }
}

@testable import TaiwanUnits
import XCTest

class Length_Tests: XCTestCase {
    func test鄉民_equals_30公分() throws {
        XCTAssertEqual(
            Measurement(value: 1, unit: 長度單位.鄉民),
            Measurement(value: 30, unit: 長度單位.公分))
    }
    
    // Test standard unit aliases
    func test公里_equals_kilometers() throws {
        XCTAssertEqual(長度單位.公里, UnitLength.kilometers)
    }
    
    func test公寸_equals_decimeters() throws {
        XCTAssertEqual(長度單位.公寸, UnitLength.decimeters)
    }
    
    func test公分_equals_centimeters() throws {
        XCTAssertEqual(長度單位.公分, UnitLength.centimeters)
    }
    
    func test公厘_equals_millimeters() throws {
        XCTAssertEqual(長度單位.公厘, UnitLength.millimeters)
    }
    
    func test微米_equals_micrometers() throws {
        XCTAssertEqual(長度單位.微米, UnitLength.micrometers)
    }
    
    func test納米_equals_nanometers() throws {
        XCTAssertEqual(長度單位.納米, UnitLength.nanometers)
    }
    
    func test奈米_equals_nanometers() throws {
        XCTAssertEqual(長度單位.奈米, UnitLength.nanometers)
    }
    
    func test英哩_equals_miles() throws {
        XCTAssertEqual(長度單位.英哩, UnitLength.miles)
    }
    
    func test碼_equals_yards() throws {
        XCTAssertEqual(長度單位.碼, UnitLength.yards)
    }
    
    func test英呎_equals_feet() throws {
        XCTAssertEqual(長度單位.英呎, UnitLength.feet)
    }
    
    func test英吋_equals_inches() throws {
        XCTAssertEqual(長度單位.英吋, UnitLength.inches)
    }
    
    func test光年_equals_lightyears() throws {
        XCTAssertEqual(長度單位.光年, UnitLength.lightyears)
    }
    
    func test天文單位_equals_astronomicalUnits() throws {
        XCTAssertEqual(長度單位.天文單位, UnitLength.astronomicalUnits)
    }
    
    // Test 鄉民 unit conversion properties
    func test鄉民_has_correct_symbol() throws {
        XCTAssertEqual(長度單位.鄉民.symbol, "鄉民")
    }
    
    func test鄉民_conversion_to_meters() throws {
        let measurement = Measurement(value: 1, unit: 長度單位.鄉民)
        let inMeters = measurement.converted(to: .meters)
        XCTAssertEqual(inMeters.value, 0.3, accuracy: 0.001)
    }
    
    // Test conversions between units
    func testConversion公里To公分() throws {
        let measurement = Measurement(value: 1, unit: 長度單位.公里)
        let converted = measurement.converted(to: 長度單位.公分)
        XCTAssertEqual(converted.value, 100000, accuracy: 0.001)
    }
    
    func testConversion英呎To公分() throws {
        let measurement = Measurement(value: 1, unit: 長度單位.英呎)
        let converted = measurement.converted(to: 長度單位.公分)
        XCTAssertEqual(converted.value, 30.48, accuracy: 0.01)
    }
}

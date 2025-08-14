@testable import TaiwanUnits
import XCTest

class Area_Tests: XCTestCase {
    // Test standard unit aliases
    func test平方公里_equals_squareKilometers() throws {
        XCTAssertEqual(面積單位.平方公里, UnitArea.squareKilometers)
    }
    
    func test平方公尺_equals_squareMeters() throws {
        XCTAssertEqual(面積單位.平方公尺, UnitArea.squareMeters)
    }
    
    func test平方公分_equals_squareCentimeters() throws {
        XCTAssertEqual(面積單位.平方公分, UnitArea.squareCentimeters)
    }
    
    func test平方公厘_equals_squareMillimeters() throws {
        XCTAssertEqual(面積單位.平方公厘, UnitArea.squareMillimeters)
    }
    
    // Test custom Taiwan area units
    func test公畝_has_correct_symbol() throws {
        XCTAssertEqual(面積單位.公畝.symbol, "公畝")
    }
    
    func test公頃_has_correct_symbol() throws {
        XCTAssertEqual(面積單位.公頃.symbol, "公頃")
    }
    
    func test坪_has_correct_symbol() throws {
        XCTAssertEqual(面積單位.坪.symbol, "坪")
    }
    
    func test分_has_correct_symbol() throws {
        XCTAssertEqual(面積單位.分.symbol, "分")
    }
    
    func test甲_has_correct_symbol() throws {
        XCTAssertEqual(面積單位.甲.symbol, "甲")
    }
    
    // Test conversions to square meters
    func test公畝_conversion_to_squareMeters() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.公畝)
        let inSquareMeters = measurement.converted(to: .squareMeters)
        XCTAssertEqual(inSquareMeters.value, 100, accuracy: 0.001)
    }
    
    func test公頃_conversion_to_squareMeters() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.公頃)
        let inSquareMeters = measurement.converted(to: .squareMeters)
        XCTAssertEqual(inSquareMeters.value, 10000, accuracy: 0.001)
    }
    
    func test坪_conversion_to_squareMeters() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.坪)
        let inSquareMeters = measurement.converted(to: .squareMeters)
        XCTAssertEqual(inSquareMeters.value, 3.30579, accuracy: 0.001)
    }
    
    func test分_conversion_to_squareMeters() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.分)
        let inSquareMeters = measurement.converted(to: .squareMeters)
        XCTAssertEqual(inSquareMeters.value, 969.917, accuracy: 0.001)
    }
    
    func test甲_conversion_to_squareMeters() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.甲)
        let inSquareMeters = measurement.converted(to: .squareMeters)
        XCTAssertEqual(inSquareMeters.value, 9699.17, accuracy: 0.01)
    }
    
    // Test conversions between Taiwan units
    func testConversion甲To分() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.甲)
        let converted = measurement.converted(to: 面積單位.分)
        XCTAssertEqual(converted.value, 10, accuracy: 0.01)
    }
    
    func testConversion分To坪() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.分)
        let converted = measurement.converted(to: 面積單位.坪)
        XCTAssertEqual(converted.value, 293.4, accuracy: 0.1)
    }
    
    func testConversion公頃To甲() throws {
        let measurement = Measurement(value: 1, unit: 面積單位.公頃)
        let converted = measurement.converted(to: 面積單位.甲)
        XCTAssertEqual(converted.value, 1.031, accuracy: 0.01)
    }
}
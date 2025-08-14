@testable import TaiwanUnits
import XCTest

class Mass_Tests: XCTestCase {
    // Test standard unit aliases
    func test公噸_equals_metricTons() throws {
        XCTAssertEqual(質量單位.公噸, UnitMass.metricTons)
    }
    
    func test公斤_equals_kilograms() throws {
        XCTAssertEqual(質量單位.公斤, UnitMass.kilograms)
    }
    
    func test公克_equals_grams() throws {
        XCTAssertEqual(質量單位.公克, UnitMass.grams)
    }
    
    func test毫克_equals_milligrams() throws {
        XCTAssertEqual(質量單位.毫克, UnitMass.milligrams)
    }
    
    func test英磅_equals_pounds() throws {
        XCTAssertEqual(質量單位.英磅, UnitMass.pounds)
    }
    
    func test盎司_equals_ounces() throws {
        XCTAssertEqual(質量單位.盎司, UnitMass.ounces)
    }
    
    // Test custom Taiwan mass units
    func test台斤_has_correct_symbol() throws {
        XCTAssertEqual(質量單位.台斤.symbol, "台斤")
    }
    
    func test台兩_has_correct_symbol() throws {
        XCTAssertEqual(質量單位.台兩.symbol, "台兩")
    }
    
    func test市斤_has_correct_symbol() throws {
        XCTAssertEqual(質量單位.市斤.symbol, "市斤")
    }
    
    // Test conversions to kilograms
    func test台斤_conversion_to_kilograms() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台斤)
        let inKilograms = measurement.converted(to: .kilograms)
        XCTAssertEqual(inKilograms.value, 0.6, accuracy: 0.001)
    }
    
    func test台兩_conversion_to_kilograms() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台兩)
        let inKilograms = measurement.converted(to: .kilograms)
        XCTAssertEqual(inKilograms.value, 0.0375, accuracy: 0.0001)
    }
    
    func test市斤_conversion_to_kilograms() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.市斤)
        let inKilograms = measurement.converted(to: .kilograms)
        XCTAssertEqual(inKilograms.value, 0.5, accuracy: 0.001)
    }
    
    // Test conversions between Taiwan units
    func testConversion台斤To台兩() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台斤)
        let converted = measurement.converted(to: 質量單位.台兩)
        XCTAssertEqual(converted.value, 16, accuracy: 0.01)
    }
    
    func testConversion台斤To公克() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台斤)
        let converted = measurement.converted(to: 質量單位.公克)
        XCTAssertEqual(converted.value, 600, accuracy: 0.1)
    }
    
    func testConversion市斤To台斤() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.市斤)
        let converted = measurement.converted(to: 質量單位.台斤)
        XCTAssertEqual(converted.value, 0.833, accuracy: 0.01)
    }
    
    // Test conversion to common international units
    func testConversion台斤To英磅() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台斤)
        let converted = measurement.converted(to: 質量單位.英磅)
        XCTAssertEqual(converted.value, 1.323, accuracy: 0.01)
    }
    
    func testConversion台兩To盎司() throws {
        let measurement = Measurement(value: 1, unit: 質量單位.台兩)
        let converted = measurement.converted(to: 質量單位.盎司)
        XCTAssertEqual(converted.value, 1.323, accuracy: 0.01)
    }
}
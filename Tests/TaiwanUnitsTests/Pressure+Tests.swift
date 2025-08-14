@testable import TaiwanUnits
import XCTest

class Pressure_Tests: XCTestCase {
    // Test pressure unit aliases
    func test百帕_equals_hectopascals() throws {
        XCTAssertEqual(壓力單位.百帕, UnitPressure.hectopascals)
    }
    
    func test千帕_equals_kilopascals() throws {
        XCTAssertEqual(壓力單位.千帕, UnitPressure.kilopascals)
    }
    
    func test百萬帕_equals_megapascals() throws {
        XCTAssertEqual(壓力單位.百萬帕, UnitPressure.megapascals)
    }
    
    func test十億帕_equals_gigapascals() throws {
        XCTAssertEqual(壓力單位.十億帕, UnitPressure.gigapascals)
    }
    
    func test巴_equals_bars() throws {
        XCTAssertEqual(壓力單位.巴, UnitPressure.bars)
    }
    
    func test毫巴_equals_millibars() throws {
        XCTAssertEqual(壓力單位.毫巴, UnitPressure.millibars)
    }
    
    // Test pressure conversions
    func testConversion百帕To千帕() throws {
        let measurement = Measurement(value: 10, unit: 壓力單位.百帕)
        let converted = measurement.converted(to: 壓力單位.千帕)
        XCTAssertEqual(converted.value, 1, accuracy: 0.01)
    }
    
    func testConversion千帕To百萬帕() throws {
        let measurement = Measurement(value: 1000, unit: 壓力單位.千帕)
        let converted = measurement.converted(to: 壓力單位.百萬帕)
        XCTAssertEqual(converted.value, 1, accuracy: 0.01)
    }
    
    func testConversion百萬帕To十億帕() throws {
        let measurement = Measurement(value: 1000, unit: 壓力單位.百萬帕)
        let converted = measurement.converted(to: 壓力單位.十億帕)
        XCTAssertEqual(converted.value, 1, accuracy: 0.01)
    }
    
    func testConversion巴To百帕() throws {
        let measurement = Measurement(value: 1, unit: 壓力單位.巴)
        let converted = measurement.converted(to: 壓力單位.百帕)
        XCTAssertEqual(converted.value, 1000, accuracy: 0.1)
    }
    
    func testConversion巴To毫巴() throws {
        let measurement = Measurement(value: 1, unit: 壓力單位.巴)
        let converted = measurement.converted(to: 壓力單位.毫巴)
        XCTAssertEqual(converted.value, 1000, accuracy: 0.1)
    }
    
    // Test atmospheric pressure conversions
    func testStandardAtmosphericPressure() throws {
        // Standard atmospheric pressure is about 1013.25 hPa
        let atmospheric = Measurement(value: 1013.25, unit: 壓力單位.百帕)
        let inBars = atmospheric.converted(to: 壓力單位.巴)
        let inKilopascals = atmospheric.converted(to: 壓力單位.千帕)
        
        XCTAssertEqual(inBars.value, 1.01325, accuracy: 0.001)
        XCTAssertEqual(inKilopascals.value, 101.325, accuracy: 0.01)
    }
    
    func testConversion毫巴To百帕() throws {
        let measurement = Measurement(value: 1013, unit: 壓力單位.毫巴)
        let converted = measurement.converted(to: 壓力單位.百帕)
        XCTAssertEqual(converted.value, 1013, accuracy: 0.1)
    }
    
    // Test high pressure conversions
    func testHighPressureConversions() throws {
        let highPressure = Measurement(value: 5, unit: 壓力單位.十億帕)
        let inMegapascals = highPressure.converted(to: 壓力單位.百萬帕)
        let inKilopascals = highPressure.converted(to: 壓力單位.千帕)
        
        XCTAssertEqual(inMegapascals.value, 5000, accuracy: 0.1)
        XCTAssertEqual(inKilopascals.value, 5_000_000, accuracy: 100)
    }
}
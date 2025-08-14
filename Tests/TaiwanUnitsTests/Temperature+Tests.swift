@testable import TaiwanUnits
import XCTest

class Temperature_Tests: XCTestCase {
    // Test temperature unit aliases
    func test開氏_equals_kelvin() throws {
        XCTAssertEqual(溫度單位.開氏, UnitTemperature.kelvin)
    }
    
    func test攝氏_equals_celsius() throws {
        XCTAssertEqual(溫度單位.攝氏, UnitTemperature.celsius)
    }
    
    func test華氏_equals_fahrenheit() throws {
        XCTAssertEqual(溫度單位.華氏, UnitTemperature.fahrenheit)
    }
    
    // Test temperature conversions
    func testConversion攝氏To華氏FreezingPoint() throws {
        let measurement = Measurement(value: 0, unit: 溫度單位.攝氏)
        let converted = measurement.converted(to: 溫度單位.華氏)
        XCTAssertEqual(converted.value, 32, accuracy: 0.01)
    }
    
    func testConversion攝氏To華氏BoilingPoint() throws {
        let measurement = Measurement(value: 100, unit: 溫度單位.攝氏)
        let converted = measurement.converted(to: 溫度單位.華氏)
        XCTAssertEqual(converted.value, 212, accuracy: 0.01)
    }
    
    func testConversion華氏To攝氏() throws {
        let measurement = Measurement(value: 212, unit: 溫度單位.華氏)
        let converted = measurement.converted(to: 溫度單位.攝氏)
        XCTAssertEqual(converted.value, 100, accuracy: 0.01)
    }
    
    func testConversion攝氏To開氏() throws {
        let measurement = Measurement(value: 0, unit: 溫度單位.攝氏)
        let converted = measurement.converted(to: 溫度單位.開氏)
        XCTAssertEqual(converted.value, 273.15, accuracy: 0.01)
    }
    
    func testConversion開氏To攝氏() throws {
        let measurement = Measurement(value: 273.15, unit: 溫度單位.開氏)
        let converted = measurement.converted(to: 溫度單位.攝氏)
        XCTAssertEqual(converted.value, 0, accuracy: 0.01)
    }
    
    func testConversion華氏To開氏() throws {
        let measurement = Measurement(value: 32, unit: 溫度單位.華氏)
        let converted = measurement.converted(to: 溫度單位.開氏)
        XCTAssertEqual(converted.value, 273.15, accuracy: 0.01)
    }
    
    // Test common temperature values
    func testRoomTemperatureConversions() throws {
        let roomTempCelsius = Measurement(value: 20, unit: 溫度單位.攝氏)
        let inFahrenheit = roomTempCelsius.converted(to: 溫度單位.華氏)
        let inKelvin = roomTempCelsius.converted(to: 溫度單位.開氏)
        
        XCTAssertEqual(inFahrenheit.value, 68, accuracy: 0.1)
        XCTAssertEqual(inKelvin.value, 293.15, accuracy: 0.1)
    }
    
    func testBodyTemperatureConversions() throws {
        let bodyTempCelsius = Measurement(value: 37, unit: 溫度單位.攝氏)
        let inFahrenheit = bodyTempCelsius.converted(to: 溫度單位.華氏)
        
        XCTAssertEqual(inFahrenheit.value, 98.6, accuracy: 0.1)
    }
}
import Foundation

public typealias 面積單位 = UnitArea

extension 面積單位 {
    public class var 平方公里: 面積單位 {
        面積單位.squareKilometers
    }

    public class var 公畝: 面積單位 {
        面積單位(symbol: "公畝", converter: UnitConverterLinear(coefficient: 100))
    }

    public class var 公頃: 面積單位 {
        面積單位(symbol: "公頃", converter: UnitConverterLinear(coefficient: 10000))
    }

    public class var 平方公尺: 面積單位 {
        面積單位.squareMeters
    }
    
    public class var 平方公分: 面積單位 {
        面積單位.squareCentimeters
    }
    
    public class var 平方公厘: 面積單位 {
        面積單位.squareMillimeters
    }

    public class var 坪: 面積單位 {
        面積單位(symbol: "坪", converter: UnitConverterLinear(coefficient: 3.30579))
    }

    public class var 分: 面積單位 {
        面積單位(symbol: "分", converter: UnitConverterLinear(coefficient: 969.917))
    }

    public class var 甲: 面積單位 {
        面積單位(symbol: "甲", converter: UnitConverterLinear(coefficient: 9_699.17))
    }
    
}

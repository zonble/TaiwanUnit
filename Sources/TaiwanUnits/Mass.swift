import Foundation

public typealias 質量單位 = UnitMass

extension 質量單位 {
    public class var 公噸: 質量單位 {
        質量單位.metricTons
    }

    public class var 公斤: 質量單位 {
        質量單位.kilograms
    }

    public class var 台斤: 質量單位 {
        質量單位(symbol: "台斤", converter: UnitConverterLinear(coefficient: 0.6))
    }

    public class var 台兩: 質量單位 {
        質量單位(symbol: "台兩", converter: UnitConverterLinear(coefficient: 0.0375))
    }

    public class var 市斤: 質量單位 {
        質量單位(symbol: "市斤", converter: UnitConverterLinear(coefficient: 0.5))
    }

    public class var 公克: 質量單位 {
        質量單位.grams
    }

    public class var 毫克: 質量單位 {
        質量單位.milligrams
    }

    public class var 英磅: 質量單位 {
        質量單位.pounds
    }

    public class var 盎司: 質量單位 {
        質量單位.ounces
    }

}

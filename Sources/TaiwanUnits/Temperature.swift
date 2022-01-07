import Foundation

public typealias 溫度單位 = UnitTemperature

extension 溫度單位 {
    public class var 開氏: 溫度單位 {
        溫度單位.kelvin
    }

    public class var 攝氏: 溫度單位 {
        溫度單位.celsius
    }

    public class var 華氏: 溫度單位 {
        溫度單位.fahrenheit
    }
}

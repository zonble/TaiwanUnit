import Foundation

public typealias 壓力單位 = UnitPressure

extension 壓力單位 {
    public class var 百帕: 壓力單位 {
        壓力單位.hectopascals
    }

    public class var 千帕: 壓力單位 {
        壓力單位.kilopascals
    }

    public class var 百萬帕: 壓力單位 {
        壓力單位.megapascals
    }

    public class var 十億帕: 壓力單位 {
        壓力單位.gigapascals
    }

    public class var 巴: 壓力單位 {
        壓力單位.bars
    }

    public class var 毫巴: 壓力單位 {
        壓力單位.millibars
    }

}

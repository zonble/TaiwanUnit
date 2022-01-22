import Foundation

public typealias 長度單位 = UnitLength

extension 長度單位 {
    public class var 公里: 長度單位 {
        長度單位.kilometers
    }

    public class var 公寸: 長度單位 {
        長度單位.decimeters
    }

    public class var 公分: 長度單位 {
        長度單位.centimeters
    }

    public class var 公厘: 長度單位 {
        長度單位.millimeters
    }

    public class var 微米: 長度單位 {
        長度單位.micrometers
    }

    public class var 納米: 長度單位 {
        長度單位.nanometers
    }

    public class var 奈米: 長度單位 {
        長度單位.nanometers
    }

    public class var 英哩: 長度單位 {
        長度單位.miles
    }

    public class var 碼: 長度單位 {
        長度單位.yards
    }

    public class var 英呎: 長度單位 {
        長度單位.feet
    }

    public class var 英吋: 長度單位 {
        長度單位.inches
    }

    public class var 光年: 長度單位 {
        長度單位.lightyears
    }

    public class var 天文單位: 長度單位 {
        長度單位.astronomicalUnits
    }

    public class var 鄉民: 長度單位 {
        UnitLength(
          symbol: UnitLength.centimeters.symbol,
          converter: UnitConverterLinear(coefficient: 0.3, constant: 0.0))
    }
}

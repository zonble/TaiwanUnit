# TaiwanUnits

[![CI](https://github.com/zonble/TaiwanUnit/actions/workflows/ci.yml/badge.svg)](https://github.com/zonble/TaiwanUnit/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/zonble/TaiwanUnit/branch/main/graph/badge.svg)](https://codecov.io/gh/zonble/TaiwanUnit)

A Swift Package Manager library that provides Traditional Chinese (繁體中文) aliases and extensions for Foundation's unit measurement classes. TaiwanUnits includes traditional Taiwanese units alongside standard metric and imperial units with Chinese names, making it easy to work with measurements in Taiwan and Chinese-speaking contexts.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Available Units](#available-units)
  - [Length Units (長度單位)](#length-units-長度單位)
  - [Mass Units (質量單位)](#mass-units-質量單位)
  - [Area Units (面積單位)](#area-units-面積單位)
  - [Temperature Units (溫度單位)](#temperature-units-溫度單位)
  - [Pressure Units (壓力單位)](#pressure-units-壓力單位)
- [Traditional Taiwan Units](#traditional-taiwan-units)
- [Examples](#examples)
- [Building and Testing](#building-and-testing)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Chinese Unit Names**: Traditional Chinese aliases for all standard Foundation measurement units
- **Traditional Taiwan Units**: Historic Taiwanese measurement units like 台斤, 台兩, 坪, 甲, and 分
- **Internet Culture Units**: Fun units like 鄉民 (30cm, representing an average person's foot)
- **Full Foundation Integration**: Works seamlessly with Foundation's `Measurement` and `Unit` classes
- **Type Safety**: Uses Swift's strong typing system with `typealias` for Chinese unit names
- **Comprehensive Testing**: 77+ tests ensuring accurate conversions
- **Zero Dependencies**: Pure Swift implementation with no external dependencies

## Requirements

- **Swift**: 5.5 or later
- **Platforms**: 
  - macOS 10.12+
  - iOS 10.0+
  - tvOS 10.0+
  - watchOS 3.0+
- **Xcode**: 13.0+ (for development)

## Installation

### Swift Package Manager

Add TaiwanUnits to your project using Swift Package Manager. In Xcode:

1. Go to File → Add Package Dependencies...
2. Enter the repository URL: `https://github.com/zonble/TaiwanUnit.git`
3. Choose the version or branch you want to use
4. Add to your target

Or add it to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/zonble/TaiwanUnit.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["TaiwanUnits"]
    )
]
```

## Usage

Import the library and start using Chinese unit names with Foundation's `Measurement` class:

```swift
import Foundation
import TaiwanUnits

// Create measurements using Chinese unit names
let height = Measurement(value: 170, unit: 長度單位.公分)
let weight = Measurement(value: 1.2, unit: 質量單位.台斤)
let area = Measurement(value: 30, unit: 面積單位.坪)

// Convert between units
let heightInMeters = height.converted(to: 長度單位.公尺)
let weightInKilograms = weight.converted(to: 質量單位.公斤)
let areaInSquareMeters = area.converted(to: 面積單位.平方公尺)

print("Height: \(heightInMeters)") // Height: 1.7 m
print("Weight: \(weightInKilograms)") // Weight: 0.72 kg
print("Area: \(areaInSquareMeters)") // Area: 99.1737 m²
```

## Available Units

### Length Units (長度單位)

TaiwanUnits provides Chinese names for all standard length units plus traditional Taiwan units:

**Metric Units:**
- `公里` - kilometers
- `公尺` - meters  
- `公寸` - decimeters
- `公分` - centimeters
- `公厘` - millimeters
- `微米` - micrometers
- `納米` / `奈米` - nanometers

**Imperial Units:**
- `英哩` - miles
- `碼` - yards
- `英呎` - feet
- `英吋` - inches

**Astronomical Units:**
- `光年` - light years
- `天文單位` - astronomical units

**Traditional Taiwan Units:**
- `鄉民` - "netizen" unit (30 cm) - A humorous internet culture reference

### Mass Units (質量單位)

**Metric Units:**
- `公噸` - metric tons
- `公斤` - kilograms
- `公克` - grams
- `毫克` - milligrams

**Imperial Units:**
- `英磅` - pounds
- `盎司` - ounces

**Traditional Taiwan Market Units:**
- `台斤` - Taiwan catty (600g) - Traditional market weight unit
- `台兩` - Taiwan tael (37.5g) - 1/16 of a 台斤
- `市斤` - Chinese catty (500g) - Mainland Chinese market unit

### Area Units (面積單位)

**Metric Units:**
- `平方公里` - square kilometers
- `公頃` - hectares (10,000 m²)
- `公畝` - ares (100 m²)
- `平方公尺` - square meters
- `平方公分` - square centimeters
- `平方公厘` - square millimeters

**Traditional Taiwan Land Units:**
- `甲` - jia (9,699.17 m²) - Large agricultural land unit
- `分` - fen (969.917 m²) - 1/10 of a 甲
- `坪` - ping (3.30579 m²) - Common real estate unit, about 2 tatami mats

### Temperature Units (溫度單位)

- `開氏` - Kelvin
- `攝氏` - Celsius
- `華氏` - Fahrenheit

### Pressure Units (壓力單位)

- `十億帕` - gigapascals
- `百萬帕` - megapascals  
- `千帕` - kilopascals
- `百帕` - hectopascals
- `巴` - bars
- `毫巴` - millibars

## Traditional Taiwan Units

Taiwan has a rich history of traditional measurement units that are still used today, especially in markets and real estate:

### Market Weight Units
- **台斤 (Taiwan Catty)**: 600 grams - Still commonly used in traditional markets
- **台兩 (Taiwan Tael)**: 37.5 grams - 1/16 of a 台斤, used for precious items
- **市斤 (Chinese Catty)**: 500 grams - Used in mainland China and sometimes in Taiwan

### Land Measurement Units
- **坪 (Ping)**: 3.30579 m² - The most common unit for real estate in Taiwan
- **分 (Fen)**: 969.917 m² - Used for agricultural land, 1/10 of a 甲
- **甲 (Jia)**: 9,699.17 m² - Large agricultural land unit, about 2.4 acres

### Internet Culture Units
- **鄉民 (Netizen)**: 30 cm - A humorous unit representing the approximate length of an average person's foot, popular in Taiwan's online communities

## Examples

### Traditional Market Shopping

```swift
import TaiwanUnits

// Buying vegetables at a traditional market
let vegetables = Measurement(value: 2, unit: 質量單位.台斤)
let inKilograms = vegetables.converted(to: 質量單位.公斤)
print("Vegetables: \(inKilograms)") // 1.2 kg

// Converting between Taiwan tael and grams
let gold = Measurement(value: 5, unit: 質量單位.台兩)
let inGrams = gold.converted(to: 質量單位.公克)
print("Gold: \(inGrams)") // 187.5 g
```

### Real Estate Calculations

```swift
// Apartment size in Taiwan
let apartment = Measurement(value: 25, unit: 面積單位.坪)
let inSquareMeters = apartment.converted(to: 面積單位.平方公尺)
print("Apartment: \(inSquareMeters)") // 82.64 m²

// Land area calculations
let farmland = Measurement(value: 2, unit: 面積單位.甲)
let inHectares = farmland.converted(to: 面積單位.公頃)
print("Farmland: \(inHectares)") // 1.94 hectares
```

### Temperature Conversions

```swift
// Weather reporting
let temperature = Measurement(value: 25, unit: 溫度單位.攝氏)
let inFahrenheit = temperature.converted(to: 溫度單位.華氏)
print("Temperature: \(inFahrenheit)") // 77°F
```

### Fun with Internet Culture Units

```swift
// Measuring height in "netizen" units
let height = Measurement(value: 6, unit: 長度單位.鄉民)
let inCentimeters = height.converted(to: 長度單位.公分)
print("Height: \(inCentimeters)") // 180 cm
```

## Building and Testing

### Building the Package

```bash
swift build
```

### Running Tests

```bash
swift test
```

The project includes comprehensive tests (77+ test cases) covering:
- Unit alias verification
- Conversion accuracy testing
- Traditional Taiwan unit calculations
- Cross-unit conversions

### Clean Build

```bash
swift package clean
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup

1. Clone the repository
2. Open in Xcode or your preferred Swift development environment
3. Run `swift build` to ensure everything compiles
4. Run `swift test` to verify all tests pass
5. Make your changes and add tests as needed

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Copyright (c) 2025 Weizhong Yang a.k.a zonble

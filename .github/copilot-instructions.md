# TaiwanUnits - Swift Package Manager Library
TaiwanUnits is a Swift Package Manager library that provides Chinese (Traditional Chinese) aliases and extensions for Foundation's unit measurement classes. It includes traditional Taiwanese units alongside standard metric and imperial units with Chinese names.

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

### Prerequisites
- Swift 5.5+ is required (validated with Swift 6.1.2)
- No external dependencies required
- Linux/macOS environment supported

### Essential Commands
- Build the package: `swift build` -- takes 4-35 seconds (varies by build state). NEVER CANCEL. Set timeout to 60+ minutes for safety.
- Run tests: `swift test` -- takes 2-6 seconds. NEVER CANCEL. Set timeout to 30+ minutes for safety.
- Clean build artifacts: `swift package clean`
- Run tests in parallel: `swift test --parallel`
- Show dependencies: `swift package show-dependencies` (will show "No external dependencies found")

### Build and Test Workflow
ALWAYS follow this exact sequence when making changes:
1. `swift package clean` -- cleans previous build artifacts
2. `swift build` -- builds the package (4-35 seconds depending on build state)
3. `swift test` -- runs all tests (2-6 seconds)

## Validation
- The core functionality test validates that 1 鄉民 = 30 公分 (1 "netizen" unit = 30 centimeters)
- ALWAYS run `swift test` after any code changes to ensure unit conversions work correctly
- The test suite runs quickly (2-6 seconds) so run it frequently during development
- Manual validation: Check that Chinese unit names properly map to Foundation unit types

## Package Structure and Key Files

### Source Files (`Sources/TaiwanUnits/`)
- `Length.swift` -- Length units (長度單位) including 鄉民, metric, and imperial units with Chinese names
- `Mass.swift` -- Mass units (質量單位) including traditional Taiwanese units like 台斤, 台兩, 市斤
- `Area.swift` -- Area units (面積單位) including traditional units like 坪, 分, 甲
- `Temperature.swift` -- Temperature units (溫度單位) with Chinese names
- `Pressure.swift` -- Pressure units (壓力單位) with Chinese names

### Test Files (`Tests/TaiwanUnitsTests/`)
- `TaiwanUnitsTests.swift` -- Empty test class (base test file)
- `Length+Tests.swift` -- Contains the core validation test for 鄉民 unit conversion

### Configuration Files
- `Package.swift` -- Swift Package Manager configuration, supports macOS 10.12+, iOS 10+, tvOS 10+, watchOS 3+
- `.gitignore` -- Standard Swift package ignore rules

## Common Development Tasks

### Adding New Units
When adding new traditional Taiwanese or Chinese units:
1. Add the unit extension in the appropriate file (Length.swift, Mass.swift, etc.)
2. Use `UnitConverterLinear` with the correct coefficient for conversion to base units
3. ALWAYS add a corresponding test case in the appropriate test file
4. Run `swift test` to validate the conversion works correctly

### Running Development Checks
- Build check: `swift build`
- Test validation: `swift test`
- Dependency check: `swift package show-dependencies`

No linting tools are currently configured for this project.

## Understanding the Codebase

### Unit Categories
- **Length (長度單位)**: Standard metric/imperial units plus 鄉民 (humorous "netizen" unit = 30cm)
- **Mass (質量單位)**: Includes traditional Taiwanese market units (台斤 = 0.6kg, 台兩 = 0.0375kg, 市斤 = 0.5kg)  
- **Area (面積單位)**: Traditional land measurement units (坪 ≈ 3.3m², 分 ≈ 970m², 甲 ≈ 9700m²)
- **Temperature (溫度單位)**: Chinese names for Kelvin (開氏), Celsius (攝氏), Fahrenheit (華氏)
- **Pressure (壓力單位)**: Chinese names for standard pressure units

### Library Usage Pattern
This library extends Foundation's `UnitLength`, `UnitMass`, `UnitArea`, `UnitTemperature`, and `UnitPressure` with Chinese property names and traditional Taiwanese units. Users can create `Measurement` objects using these units and convert between them.

## Project Characteristics
- Pure Swift library with no external dependencies
- Very fast build times (4-35 seconds depending on build state)
- Minimal test suite (currently 1 test)
- No CI/CD pipeline configured
- No code formatting or linting tools setup
- Supports multiple Apple platforms via Swift Package Manager

## Troubleshooting
- If build fails, run `swift package clean` first then `swift build`
- All tests should pass; if they don't, the unit conversion math may be incorrect
- Build artifacts are stored in `.build/` directory (ignored by git)
- No network dependencies, so builds should work in isolated environments

## CRITICAL NOTES
- NEVER CANCEL build or test commands - they complete quickly but always wait for completion
- Always test unit conversions after making changes to conversion coefficients
- This is a library package, not an executable - there's no `main.swift` or runnable application
- The 鄉民 unit is a humorous internet culture reference meaning approximately the height of an average person's foot

## Common Command Outputs
The following are outputs from frequently run commands. Reference them instead of running bash commands to save time.

### Repository Root Structure
```
ls -la /home/runner/work/TaiwanUnit/TaiwanUnit
.git
.gitignore
.swiftpm/
Package.swift
README.md
Sources/
Tests/
```

### Source Files Structure
```
Sources/TaiwanUnits/
├── Area.swift      -- Area units (面積單位)
├── Length.swift    -- Length units (長度單位) 
├── Mass.swift      -- Mass units (質量單位)
├── Pressure.swift  -- Pressure units (壓力單位)
└── Temperature.swift -- Temperature units (溫度單位)
```

### Test Files Structure
```
Tests/TaiwanUnitsTests/
├── Length+Tests.swift    -- Core validation test
└── TaiwanUnitsTests.swift -- Empty base test class
```

### Package.swift Key Content
```swift
// swift-tools-version:5.5
let package = Package(
    name: "TaiwanUnits",
    platforms: [.macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "TaiwanUnits", targets: ["TaiwanUnits"]),
    ],
    targets: [
        .target(name: "TaiwanUnits", dependencies: []),
        .testTarget(name: "TaiwanUnitsTests", dependencies: ["TaiwanUnits"])
    ]
)
```
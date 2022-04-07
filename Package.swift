// swift-tools-version:5.5
import PackageDescription

// Enable to use bundled Circular Pro fonts (for licensed usage)
let useBundledFonts = false

let package = Package(
    name: "Orbit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "Orbit", targets: ["Orbit"]),
        .library(name: "OrbitDynamic", type: .dynamic, targets: ["Orbit"]),
        .library(name: "OrbitStatic", type: .static, targets: ["Orbit"]),
    ],
    targets: [
        .target(
            name: "Orbit",
            resources:
                useBundledFonts
                    ? [
                        .copy("Foundation/Icons/Icons.ttf"),
                        .copy("Foundation/Typography/CircularPro-Bold.otf"),
                        .copy("Foundation/Typography/CircularPro-Medium.otf"),
                        .copy("Foundation/Typography/CircularPro-Book.otf"),
                      ]
                    : [.copy("Foundation/Icons/Icons.ttf")]
        ),
    ]
)

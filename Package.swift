// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Dice",
    products: [
        .library(
            name: "Dice",
            targets: ["Dice"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Dice",
            dependencies: []),
        .testTarget(
            name: "DiceTests",
            dependencies: ["Dice"]),
    ]
)

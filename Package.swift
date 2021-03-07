// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RenderKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "RenderKit", targets: ["RenderKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hexagons/LiveValues.git", from: "1.3.0"),
//        .package(path: "~/Code/Frameworks/Production/LiveValues"),
//        .package(url: "https://github.com/hexagons/NodeIO.git", from: "0.1.0"),
//        .package(path: "~/Code/Frameworks/Development/NodeIO"),
    ],
    targets: [
        .target(name: "RenderKit", dependencies: ["LiveValues"/*, "NodeIO"*/], path: "Source"),
        .testTarget(name: "RenderKitTests", dependencies: ["RenderKit"]),
    ]
)

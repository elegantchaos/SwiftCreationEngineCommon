// swift-tools-version:5.6

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 22/03/2022.
//  All code (c) 2022 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "SwiftCreationEngineCommon",
    platforms: [
        .macOS(.v12)
    ],

    products: [
        .library(
            name: "SwiftCreationEngineCommon",
            targets: [
                "SwiftCreationEngineCommon"
            ]
        ),
    ],

    dependencies: [
        .package(url: "https://github.com/elegantchaos/BinaryCoding.git", from: "1.0.2"),
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.4.2")
    ],

    targets: [
        .target(
            name: "SwiftCreationEngineCommon",
            dependencies: [
                "BinaryCoding"
            ]
        ),
        
        .testTarget(
            name: "SwiftCreationEngineCommonTests",
            dependencies: [
                "SwiftCreationEngineCommon",
                "XCTestExtensions"
            ]
        ),
    ]
)

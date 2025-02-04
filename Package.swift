// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    
    name: "MSWeakTimer",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MSWeakTimer",
            targets: ["MSWeakTimer"]
        ),
    ],
    targets: [
        .target(
            name: "MSWeakTimer",
            dependencies: [],
            path: "MSWeakTimer",
            publicHeadersPath: "include",
            cSettings: [
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ]
        )
    ]
)

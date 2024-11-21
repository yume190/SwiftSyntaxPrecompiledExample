// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UsePrebuiltSwiftSyntaxSwiftPM",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UsePrebuiltSwiftSyntaxSwiftPM",
            targets: ["UsePrebuiltSwiftSyntaxSwiftPM"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/yume190/Swallow", branch: "test-prebuilt-swift-syntax"),
        // .package(url: "https://github.com/vmanot/Swallow", branch: "master"),
        .package(path: "../Swallow"),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UsePrebuiltSwiftSyntaxSwiftPM",
            dependencies: [
                .product(name: "Swallow", package: "Swallow")
            ]
//            ,
//            linkerSettings: [
//                .unsafeFlags([
//                    "-Xlinker", "-rpath", 
//                    "-Xlinker", "@executable_path/"
//                ])
//            ]
        ),
        .testTarget(
            name: "UsePrebuiltSwiftSyntaxSwiftPMTests",
            dependencies: ["UsePrebuiltSwiftSyntaxSwiftPM"]
        ),
    ]
)

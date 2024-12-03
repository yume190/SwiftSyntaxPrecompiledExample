// swift-tools-version: 6.0

import PackageDescription
import Foundation

let package = Package(
    name: "TryCatalystPrebuilt",
    products: [
        .library(
            name: "TryCatalystPrebuilt",
            targets: ["TryCatalystPrebuilt"]
        )
    ],
    dependencies: [.package(path: "build/TryCatalyst_Precompile/XCFrameworks/packages/TryCatalyst")],
    targets: [
        .target(
            name: "TryCatalystPrebuilt",
            dependencies: [
                .product(
                    name: "TryCatalyst",
                    package: "TryCatalyst"
                )
            ],
            path: ".",
            sources: ["Empty.swift"]
        )
    ]
)
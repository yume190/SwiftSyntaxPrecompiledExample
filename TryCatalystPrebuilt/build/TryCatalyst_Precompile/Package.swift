// swift-tools-version: 6.0.0

import PackageDescription
import Foundation

let projectPath = URL(fileURLWithPath: #filePath)
    .deletingLastPathComponent()
    .path
let relativePath = "XCFrameworks"
func macroPath(_ macro: String) -> String {
    return "\(projectPath)/\(relativePath)/\(macro)-tool#\(macro)"
}

let package = Package(
    name: "TryCatalyst_Precompile",
    platforms: [
        .iOS("13.0"),
        .macCatalyst("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    dependencies: [.package(path: "XCFrameworks/packages/TryCatalyst")],
    targets: [
        .target(
            name: "Empty",
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
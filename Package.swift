// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "JSONPatch",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        .library(
            name: "JSONPatch",
            targets: ["JSONPatch"]),
    ],
    targets: [
        .target(
            name: "JSONPatch",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "JSONPatchTests",
            dependencies: ["JSONPatch"],
            exclude: ["Info.plist"],
            resources: [.process("tests.json"),
                        .process("spec_tests.json"),
                        .process("extra.json"),
                        .process("bigexample1.json"),
                        .process("bigexample2.json"),
                        .process("bigpatch.json")]
        ),
    ]
)

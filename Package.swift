// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteC.xcframework.zip", checksum: "2e5e5449a1b4038c447c1bd3df303141ec27ae73c31d3bc76d9dc46e7b15295a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCCoreML.xcframework.zip", checksum: "efe0c1a4985607e245ed3757247007df8ec760744af3edb1b8ed1ae93046c3c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCMetal.xcframework.zip", checksum: "e25dc8bb5eea161c510bc2313cdc3c73406cddadc2a99bb5cbc5330da699ff09"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

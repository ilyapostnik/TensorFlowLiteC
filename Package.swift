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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteC.xcframework.zip", checksum: "7a4ae6a601da357e01bb6ac73e162dc6fe495926d6d6c8d5f41d989723131bda"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0e4e22d0ad305f06488358186c84da72c6b77883d9d217f2771039539b3663f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCMetal.xcframework.zip", checksum: "7eba5ded40ba38856b3f8951e2e44eaaaf12dc609df9af28c1fb8a98685176b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

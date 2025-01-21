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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteC.xcframework.zip", checksum: "58d28bf026410a2f73e4edb4444d5f2dd67dacd5f99a62f20a6b278b4644cad0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "61ccf3fe2ce98bd629ba7742724f90aa2c171a70b83188e043b3d56c1a14e38d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCMetal.xcframework.zip", checksum: "e857177c2a2b8df2787d9fbc2f7a612692e84d67f95d794bba69d0f54dce9bb9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

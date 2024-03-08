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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteC.xcframework.zip", checksum: "6eb2d941efe0b7cd0b4f89f8eb3c40179df7ee687154432d82204a86978ec080"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b7d9b1e74a8de55d8577782e832e5ff92db6aaaa5b0bb37ec313df13c13a1dd5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c24266ab9b265c3d97d4c78179f7fd47cf4c288e6c8008239393dfa6ae5e212"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

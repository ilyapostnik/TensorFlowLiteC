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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteC.xcframework.zip", checksum: "42f8f537ac3d88a35fc1e16dc9bfb73a9d806e024b4fbae1b0246d1c6a71a73a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2fcec6fba9f261e049608723918a9544d68db932e094f294947e38d467c69f0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240209/TensorFlowLiteCMetal.xcframework.zip", checksum: "a654fdeeca2d84f7b216f672bb5a9f5fccf365d13257638f8a3c0115d446c51b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

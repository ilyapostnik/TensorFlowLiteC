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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteC.xcframework.zip", checksum: "955fd3b3b8cf6f43d41d1b1e75d165e2328b1847c4a9ac930a8236493837cf24"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f48d69e32e937275ac1b7056c652b5f0981e1c6915a0b436aac7d678c8f99e36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240511/TensorFlowLiteCMetal.xcframework.zip", checksum: "d60091200046ae723eb72950505b4d6b39bc7b0960fddc8c7977a4b98985238e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

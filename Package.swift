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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteC.xcframework.zip", checksum: "952ce4fcb068fa7253d7ab9944da4d1ed191f843ecc04d25ba1b1a87d5e2f5f3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0d5dad2a7c06928a62b9bc5475e43c5f8923fdef932796a7f6a3c68028fb3600"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteCMetal.xcframework.zip", checksum: "2246818b90d1b329063cbcd4c45d5008b0ed57cd591302b7a54f44d5618ae184"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

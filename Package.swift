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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteC.xcframework.zip", checksum: "42db4a6f461b1acde622edf1573c2b7431fd9734f21bc9059ec64441129141c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteCCoreML.xcframework.zip", checksum: "725731dd14d771f6e2b870f845acdf8bccff815e44aead04af041a3adfe3f67c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ca31f2ac788e21d085174c452eb9c3b550bd5cc580549ad20573692926050c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

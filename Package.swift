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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteC.xcframework.zip", checksum: "1d85fa726fb119866758708e2ac25e75061dc0f22cda8cdea06cd6d4a88df91c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b6e65cce3ee98277a3368caa21ccc57747023c1192ddaa6f20dff1ee466b473"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCMetal.xcframework.zip", checksum: "118f3058fe5a87bd4bdb0aa0a0ba1cde72e8962a8425377b0282e2d4d0bd43e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteC.xcframework.zip", checksum: "00254db5a46301685328f9145759ce3edc9ebef5a99b14b8bbb8dd8f71eed58f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteCCoreML.xcframework.zip", checksum: "251e0b6c05c9b2cf212b9e0c1cfe454814077f08c6596506b47409539ad0ce4a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteCMetal.xcframework.zip", checksum: "47670cec546eb9cac593d72ebe7f8c7d9df61c4ea2bc363b88a55e0b8a44429c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

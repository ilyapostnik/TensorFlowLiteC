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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteC.xcframework.zip", checksum: "3811ab09e8fb0b0a350cdb6afe2e3e60b520fd113dc199d5b0783cbd9eafe4ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e2126c31710b5e2fa83583b5bc0d72c475890d3fa33e20547ca79210dc1189a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteCMetal.xcframework.zip", checksum: "c376c525ccb6e4b748aaac2247e545e531633f5547dc5b085b52225af347abd6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

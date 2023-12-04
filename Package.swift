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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteC.xcframework.zip", checksum: "1362c0ab61d136de1cf4821cc76594c0941ffedd0c56d0e7616be04c6c56c39d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd7235009f6e477356e35d2855394edaeb4e9772cd382bb9932f7edf09d70ec8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteCMetal.xcframework.zip", checksum: "fae454e53354f11c247af96b1c3c541bafa4a059d67c2c75507dc9df7eee8886"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

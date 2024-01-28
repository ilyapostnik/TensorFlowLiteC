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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteC.xcframework.zip", checksum: "c2c6e406aec1b5abe24eae1d26325b257ff2948d5102ee4d660373b67aced65e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "24b4f0ac4c18525903c0f3e4298ac8b9a32b80e572e3cc7b8f85b3f657564f03"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteCMetal.xcframework.zip", checksum: "1043b9c8299e06cf0ed877be8d0e434050e1ab13ec7728e3f91afedfd896bfef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

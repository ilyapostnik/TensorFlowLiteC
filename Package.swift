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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteC.xcframework.zip", checksum: "f402e1ace5d3653adbf5790caaa37eed999f11c8b9e5002144a513f3fc34d792"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74d7ef0e0ec97132329644efccbae6b0044789833ea753455327b2f06f0f5d8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240418/TensorFlowLiteCMetal.xcframework.zip", checksum: "faea5ac8af491a508e3350014c93e9210517b3ecfa49ded611c6b7e2a9a840b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

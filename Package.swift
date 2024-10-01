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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteC.xcframework.zip", checksum: "c8b555349f5dcd71a3514009d0fb3efb98cceb6ec5d0786d3ac7fb860f46e511"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2c96b983dc52cd8e3944dd8fde4505fd1f4b09a9a101a620bebe0316ebbf2aaf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCMetal.xcframework.zip", checksum: "5d4579c25950a48bfdb69739cf103d583eba4dfab0652f0004ef25b3c6212188"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

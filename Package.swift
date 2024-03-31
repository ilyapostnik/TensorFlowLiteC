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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteC.xcframework.zip", checksum: "bcd52aa31c70c1a6703a3c91c3cd3509255ea3add9747f3279347e699f226aba"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "af6e201b3ea1f81e33b9a6dddd3f199ee6083693a829b6de65cf6c838aceea71"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240330/TensorFlowLiteCMetal.xcframework.zip", checksum: "ff46e9fb2e14fe111b7ebc768f44885a6f87992c3560f2ae7fe4c5c58379ab7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteC.xcframework.zip", checksum: "53f07031bd60bbccc689c3cf1b37adf7a35a4a0bd57d06baf8e9af2bf573649f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46733d3f28ff74bf7a0710df7b5b58083c7a4e54f19e3781382ef4af7c8d8b40"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240826/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5ab5a2dcbde175c191ee0ca8073ea1ffb066aaaf12f74789b682ee7de25e56d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

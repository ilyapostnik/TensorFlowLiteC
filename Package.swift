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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteC.xcframework.zip", checksum: "e872b1b46b5d5b1090b5c295816a35db3fd818c357ee47d2f85e7189bd0d6303"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b56aacbc7b8aa7db796504503d14ec85bb22557b861bee17992e0870cd64ca8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteCMetal.xcframework.zip", checksum: "af268f337b217e7ac8df057f703ba6c90ab40d3a3c2eb15482855f01fef2cb74"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

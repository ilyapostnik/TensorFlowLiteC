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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteC.xcframework.zip", checksum: "677114aa22ab8a7c93ab7a777268de6dc29b513a1b40c7732f4a8f8c9bac6065"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteCCoreML.xcframework.zip", checksum: "929935d6d867daca505cd8b2962ea39fd5e81b6a56ea2c9c10fd4e27e620d179"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteCMetal.xcframework.zip", checksum: "dd9ae3dc336624d16617ca0ced2a1adce7cefe0bac7c2fff2eb194c6007c8d7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

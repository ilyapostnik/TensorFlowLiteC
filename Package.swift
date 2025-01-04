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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteC.xcframework.zip", checksum: "8a0e80101f7f7977d1470b582cb0bb5605cd6d52985d5e6eb6e4a0f8f8d3e601"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32cb3d5967e0790a04f6d3dd991613c267f038401e30b128691798558b6971d6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCMetal.xcframework.zip", checksum: "48cec14ab4e7c9cd2eadca4cfcb8576191dc76c0e8e9dd52defee8c8fb7f8232"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

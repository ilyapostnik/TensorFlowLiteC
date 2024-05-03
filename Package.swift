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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteC.xcframework.zip", checksum: "14a69a3464f8c11e0e4514c973a6f534060b8f9edce8708a09ed8265846ec16d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b60a7d51f98cc46d239557695205249ff76300d76b2874dac5d3ca7e2ee3a30c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteCMetal.xcframework.zip", checksum: "3d6740dc436a8503b333376a4e963ac60d06ec37d6016826f8517b21048bb176"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

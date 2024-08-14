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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteC.xcframework.zip", checksum: "7ea15bf72e5c29af611b2fd2dd862e360117f8c11977330eb9e798df658949b7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1fa7c8efb87369450ec432acf757a4076ed61169199bf6ffae0ee6cdc2b329f2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb7ee2befb748b9b90aab647369a856bf065a8681e1b1df50c2ff88d01c17bde"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

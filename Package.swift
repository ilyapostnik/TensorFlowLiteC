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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteC.xcframework.zip", checksum: "92c7a5fc6ac5353066486ffb449dc889975b2991741662c9677d500c4bb5e68c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteCCoreML.xcframework.zip", checksum: "675d7e59aa734a068c2011ea6bf275823adf970691987f07b6f5383aafbc54f7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240817/TensorFlowLiteCMetal.xcframework.zip", checksum: "f100fa6d576ef511b3d55654822ae821e4b2f602a60946b0c020c648b1d3a6aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

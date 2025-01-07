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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteC.xcframework.zip", checksum: "b58f9988005a388fc48d9ef8679b2567ca60b2520034ef20b805c88711f31dc9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "420e185fcbbf0cc79bb16531592c22b5c014cce0b4d6885c1f40f39f6acf3649"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a1a24982f787ba19be5a1385acd0c11ff45a332c486e30a2ba876d6d071475d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteC.xcframework.zip", checksum: "6cf3d9492f5ec1bfe077b1b683744e2b15ff54366d4501030cf1642c24e56bad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd9ba74d5379c213f39e9b6f023a7eb554e035b307762f92b2c8e5b9a2ef169a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteCMetal.xcframework.zip", checksum: "1fad7c727b5e9e10459f70eec53923a4f49630b8cd3305285b6772bc8bc0b14e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

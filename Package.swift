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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteC.xcframework.zip", checksum: "9b887ebd2965c79dff5e614ebc587a54c53e39ddaa54cd47b4e7e758b7db1057"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "86e441873fa7b67f4e24f47f8922206b80ce5e381a9512bf67c438c8bb4c6bf8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b33599208ebaef3fe0a4f9d2a4df38d0647c0c8f71d48381e9a99fef3a143d1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

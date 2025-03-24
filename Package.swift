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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteC.xcframework.zip", checksum: "04bbb015bcc91197761fb7323ee40bb70f948724b72305eadc4ddf0164724d2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d8e07a82ea469cdeb8ede6a5246bb6f49c8f08b86b65637bfc8d9eee8b6b4403"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250323/TensorFlowLiteCMetal.xcframework.zip", checksum: "946e6a33cb4b44b97c29c365233288183acfe836fd61e677ce932b2c8177c376"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

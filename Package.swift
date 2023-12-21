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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteC.xcframework.zip", checksum: "cd4cb55e838c28f59990506b757a01d1018f0a0f31393d527ac663b77f9bf14a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dac6cc7f024d7142750c04692405165968eb62887dd1e2fa878857179d0d4fc0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteCMetal.xcframework.zip", checksum: "ccbaa7089d9166056c890a5abcea2d212d3b898aba953e18c63b8b7e61bf09f0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

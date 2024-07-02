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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteC.xcframework.zip", checksum: "32cee4ff98336b168b478393e9eb94adf0af425afa1a375ea2d569eb17818cc7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c3540293b11ca5f734346501a4443d154a71450d2ce39f209a2ed807cfc13682"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteCMetal.xcframework.zip", checksum: "455adda795fc7ac8822dd53323e6bca349ea5f92f844cf495374f95a44ca8c43"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

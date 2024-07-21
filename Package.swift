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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteC.xcframework.zip", checksum: "d4f31f1d587bd68c13ce6dcc85d2a26a2d5cad90308444e7c0636769e8379037"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5778b7cc800590aefc3247c00dcb4b7d743ee04e1ce3afa373cd80d82143378f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240720/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac0dbc5036b20b0301c00ffef8472001f0a1b831e663f3ecbc804b5a82bfe46e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

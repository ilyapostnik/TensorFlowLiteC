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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteC.xcframework.zip", checksum: "7c31b0577b2dfc086ed2182db4a00cbe4af26fff6e57074fede6e07041704dda"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bd2bfa4d7a925792a26000caf59f003b31085e9521be5184b1dc0e0357d1a5cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240622/TensorFlowLiteCMetal.xcframework.zip", checksum: "6ca6c78be60ff50a044261b439031bed66cd8f026ac12f226952a345aa880d91"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

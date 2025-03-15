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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteC.xcframework.zip", checksum: "b48687216e535eaa49c5275533a717e0b8ae73d68efacaca191eaae9fd523088"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "554b7c53cb771affa4bb0f5e25801b1d6014c58d1bc783e1133b6c6646f75f7c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCMetal.xcframework.zip", checksum: "f9a23ac3d52678af5dd0c2ec21fd0270ff11faa20ce6aced04ff81bf7879296c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

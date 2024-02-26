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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteC.xcframework.zip", checksum: "edb9e56b5ac4427d9ba02c055762de2229ff92d6a61c535d3cad9ca0f93d951c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f1f682a7f05850e897fad1abd0e8991178900e870d121da6017aab0d73b1273"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteCMetal.xcframework.zip", checksum: "9fedec6c95c73723b8a9532b57dfd019cb9220900b7b0ffcd7f17ebfee439f54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

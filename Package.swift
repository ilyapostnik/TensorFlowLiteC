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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteC.xcframework.zip", checksum: "f42d12f82bffca967fd3405837b5313debc9997f0be295fe51f1acd600c9f3f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "207ab9a175b373171713b7af913b02b4cd784192c1af76d0e765c0e860445c0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250113/TensorFlowLiteCMetal.xcframework.zip", checksum: "b2262f3bdeb7c2609603066c703cab2d2b10d96320de57a0b5ca646b4d0efcab"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)

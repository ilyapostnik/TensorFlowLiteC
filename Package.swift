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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240519/TensorFlowLiteC.xcframework.zip", checksum: "b8fe0a92982484a0b991a034a48c266e83e8b5fecb7c57682c9d7303f0178015"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a873dc495c3e049cbbbe979f5f5e7800d8ff2f0f109bf8fc3f435edcd6b8bd9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240519/TensorFlowLiteCMetal.xcframework.zip", checksum: "a25a63aeb1de238161865888eb62e6f48523aeabf6f82949ad02f6410a8a6d04"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
